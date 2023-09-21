import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/blocs.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class AuthModalBody extends StatefulWidget {
  const AuthModalBody({super.key});

  @override
  State<AuthModalBody> createState() => _AuthModalBodyState();
}

class _AuthModalBodyState extends State<AuthModalBody> {
  @override
  Widget build(BuildContext context) {
    bool _showLoader = false;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
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
                'How are you today?',
                style: MentalHealthTextStyles.text.signikaFontF24,
              ),
              Stack(
                children: [
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Введите почту';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Введите пароль';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                          const SizedBox(height: 32.0),
                          // SizedBox(
                          //   width: 100,
                          //   child: ElevatedButton(
                          //     onPressed: () {

                          //     },
                          //     child: const Text('Register'),
                          //   ),
                          // ),
                          // SizedBox(
                          //   width: 100,
                          //   child: ElevatedButton(
                          //     onPressed: () {

                          //     },
                          //     child: const Text('Log in'),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  //  _showLoader? Loader(): ,
                ],
              ),
              ActionButton(
                title: 'Log in'.toUpperCase(),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final String email = _emailController.text;
                    final String password = _passwordController.text;

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
                  if (_formKey.currentState!.validate()) {
                    final String email = _emailController.text;
                    final String password = _passwordController.text;

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
