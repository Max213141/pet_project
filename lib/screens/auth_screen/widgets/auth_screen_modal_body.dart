import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class AuthModalBody extends StatefulWidget {
  const AuthModalBody({super.key});

  @override
  State<AuthModalBody> createState() => _AuthModalBodyState();
}

class _AuthModalBodyState extends State<AuthModalBody> {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController usernameController;

  bool _showLoader = false;

  bool _switchedToRegister = true;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final l10n = l10nOf(context)!;

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
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.center,
          child: ScrollConfiguration(
            behavior: CustomBehavior(),
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    //  l10n.welcomeSecond,
                    'Welcome!',
                    style: MentalHealthTextStyles.text.signikaPrimaryFontF28,
                  ),
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
                            ...[
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 2000),
                                child: _switchedToRegister
                                    ? RepaintBoundary(
                                        child: CustomFormFieldWidget(
                                          controller: usernameController,
                                          validator: (value) {
                                            if (value?.isEmpty ?? true) {
                                              //  l10n.authUsernameIsEmpty,
                                              return 'Enter your username';
                                            }
                                            return null;
                                          },
                                          //  l10n.authUsername,
                                          title: 'Username',
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                            ],
                            RepaintBoundary(
                              child: CustomFormFieldWidget(
                                controller: emailController,
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    //  l10n.authEmailIsEmpty,
                                    return 'Enter email';
                                  }
                                  return null;
                                },
                                //  l10n.authEmail,
                                title: 'Email',
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            RepaintBoundary(
                              child: CustomFormFieldWidget(
                                controller: passwordController,
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    //  l10n.authPasswordIsEmpty,
                                    return 'Enter password';
                                  }
                                  return null;
                                },
                                //  l10n.authPassword,
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
                  title: _switchedToRegister
                      //  l10n.register,
                      ? 'Register'.toUpperCase()
                      //  l10n.logIn,
                      : 'Log in'.toUpperCase(),
                  onPressed: () {
                    hideKeyBoard();

                    if (formKey.currentState!.validate()) {
                      final String email = emailController.text;
                      final String password = passwordController.text;
                      final String username = usernameController.text;
                      _switchedToRegister
                          ? BlocProvider.of<AuthBloc>(context).add(
                              CreateUserEvent(
                                email: email,
                                password: password,
                                username: username,
                              ),
                            )
                          : BlocProvider.of<AuthBloc>(context).add(
                              LogInEvent(email: email, password: password),
                            );
                    }
                  },
                  width: MediaQuery.of(context).size.width - 70,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => setState(() {
                    _switchedToRegister = !_switchedToRegister;
                  }),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: _switchedToRegister
                              //  l10n.accountExists,
                              ? 'Already have an account?'
                              //  l10n.registerAccount,
                              : 'Register new account!',
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF14,
                        ),
                        TextSpan(
                          text: _switchedToRegister
                              ?
                              //  l10n.logIn,
                              ' Log in'
                              //  l10n.register,
                              : ' Register',
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF14
                              .copyWith(
                            color: AppColor.primaryBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
