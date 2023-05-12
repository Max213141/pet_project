import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/auth_bloc/auth_bloc.dart';
import 'package:pet_project/blocs/theme_bloc/theme_bloc.dart';
import 'package:pet_project/error_dialog.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    bool themeState = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch theme'),
        actions: [
          Switch(
            value: themeState,
            onChanged: (value) {
              setState(() {
                themeState = value;
              });
              BlocProvider.of<ThemeBloc>(context).add(ChangeTheme());
            },
          )
        ],
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            logOutSuccess: () {
              context.go('/');
            },
            authError: (errorText) => showDialog(
              context: context,
              builder: (BuildContext context) {
                return ErrorDialogWidget(
                  message: errorText,
                );
              },
            ),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(
                      const LogOutEvent(),
                    );
                  },
                  child: const Text('Log Out'),
                ),
              ),
              ElevatedButton(
                onPressed: () => context.go('/details'),
                child: const Text('Go to the Details screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
