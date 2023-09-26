import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/blocs.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/screens/auth_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class AuthModalBody extends StatefulWidget {
  const AuthModalBody({super.key});

  @override
  State<AuthModalBody> createState() => _AuthModalBodyState();
}

class _AuthModalBodyState extends State<AuthModalBody> {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool _showLoader = false;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
            loading: () => setState(() {
                  _showLoader = true;
                }),
            logInSuccess: (email, password) {
              setState(() {
                _showLoader = false;
              });
              GoRouter.of(context).go('/main');
            },
            authError: (errorText) {
              setState(() {
                _showLoader = false;
              });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ErrorDialogWidget(
                    message: errorText,
                  );
                },
              );
            });
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome!',
                style: MentalHealthTextStyles.text.signikaPrimaryFontF28,
              ),
              Stack(
                children: [
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RepaintBoundary(
                            child: FormFieldWidget(
                              controller: emailController,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Enter email';
                                }
                                return null;
                              },
                              title: 'Email',
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          RepaintBoundary(
                            child: FormFieldWidget(
                              controller: passwordController,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Enter password';
                                }
                                return null;
                              },
                              title: 'Password',
                            ),
                          ),
                          const SizedBox(height: 32.0),
                        ],
                      ),
                    ),
                  ),
                  if (_showLoader)
                    const Center(
                      child: SizedBox(
                        height: 85,
                        width: 85,
                        child: RepaintBoundary(child: Loader()),
                      ),
                    ),
                ],
              ),
              ActionButton(
                title: 'Log in'.toUpperCase(),
                onPressed: () {
                  hideKeyBoard();

                  if (formKey.currentState!.validate()) {
                    final String email = emailController.text;
                    final String password = passwordController.text;

                    BlocProvider.of<AuthBloc>(context).add(
                      LogInEvent(email: email, password: password),
                    );
                  }
                },
              ),
              const SizedBox(height: 10),
              ActionButton(
                title: 'Register'.toUpperCase(),
                onPressed: () {
                  hideKeyBoard();

                  if (formKey.currentState!.validate()) {
                    final String email = emailController.text;
                    final String password = passwordController.text;

                    BlocProvider.of<AuthBloc>(context).add(
                      CreateUserEvent(email: email, password: password),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
