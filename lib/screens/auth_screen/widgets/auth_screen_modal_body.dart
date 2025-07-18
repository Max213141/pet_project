import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/auth_bloc/auth_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class AuthScreenModalBody extends StatefulWidget {
  final bool showLoader;
  const AuthScreenModalBody({super.key, required this.showLoader});

  @override
  State<AuthScreenModalBody> createState() => _AuthScreenModalBodyState();
}

class _AuthScreenModalBodyState extends State<AuthScreenModalBody> {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController usernameController;

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
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.center,
        child: ScrollConfiguration(
          behavior: CustomBehavior(),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              Center(
                child: Text(
                  l10n.welcomeSecond,
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
                                            return l10n.authUsernameIsEmpty;
                                          }
                                          return null;
                                        },
                                        title: l10n.authUsername,
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
                                final RegExp emailRegExp = RegExp(
                                    r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-zA-Z]{2,})$');
                                if (value?.isEmpty ?? true) {
                                  return l10n.authEmailIsEmpty;
                                }
                                if (!emailRegExp.hasMatch(value!)) {
                                  return l10n.authEmailInvalid;
                                }
                                return null;
                              },
                              title: l10n.authEmail,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          RepaintBoundary(
                            child: CustomFormFieldWidget(
                              controller: passwordController,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return l10n.authPasswordIsEmpty;
                                }

                                return null;
                              },
                              title: l10n.authPassword,
                            ),
                          ),
                          const SizedBox(height: 32.0),
                        ],
                      ),
                    ),
                  ),
                  if (widget.showLoader)
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
                    ? l10n.register.toUpperCase()
                    : l10n.logIn.toUpperCase(),
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
                            ? l10n.accountExists
                            : l10n.registerAccount,
                        style:
                            MentalHealthTextStyles.text.popinsSecondaryFontF14,
                      ),
                      TextSpan(
                        text: _switchedToRegister ? l10n.logIn : l10n.register,
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
              if (Platform.isAndroid) ...[
                const SizedBox(height: 5),
                Center(
                  child: SocialsButton(
                    picturePath: 'assets/socials/gmail.svg',
                    onTap: () {
                      BlocProvider.of<AuthBloc>(context).add(
                        const SignInWithGoogle(),
                      );
                    },
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
