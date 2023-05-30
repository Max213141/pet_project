import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/auth_bloc/auth_bloc.dart';
import 'package:pet_project/blocs/theme_bloc/theme_bloc.dart';
import 'package:pet_project/common_widgets/error_dialog.dart';
import 'package:pet_project/utils/loger.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = BlocProvider.of<ThemeBloc>(context).state.isDarkTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch theme'),
        actions: [
          Switch(
            value: isDarkTheme,
            onChanged: (value) {
              setState(() {
                isDarkTheme = value;
              });
              _log('Is dark theme - $value');
              BlocProvider.of<ThemeBloc>(context)
                  .add(ChangeTheme(isDarkTheme: isDarkTheme));
            },
          )
        ],
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            logOutSuccess: () {
              GoRouter.of(context).go('/initial_page');
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
              Text(
                  '${BlocProvider.of<AuthBloc>(context).auth.currentUser?.email ?? 'Email not found'}'),
              SizedBox(height: 12),
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
                onPressed: () => GoRouter.of(context).go('/main/details'),
                child: const Text('Go to the Details screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
