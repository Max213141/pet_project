import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/auth_screen/widgets/widgets.dart';

class AuthModalBodyWrapper extends StatefulWidget {
  const AuthModalBodyWrapper({super.key});

  @override
  State<AuthModalBodyWrapper> createState() => _AuthModalBodyWrapperState();
}

class _AuthModalBodyWrapperState extends State<AuthModalBodyWrapper> {
  bool _showLoader = false;

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
          },
        );
      },
      child: AuthScreenModalBody(
        showLoader: _showLoader,
      ),
    );
  }
}
