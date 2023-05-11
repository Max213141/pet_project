import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/theme_bloc/theme_bloc.dart';

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
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/details'),
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}
