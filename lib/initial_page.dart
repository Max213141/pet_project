import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/auth_screen.dart';
import 'package:pet_project/main_screen.dart';

class InitialPage extends StatefulWidget {
  final FirebaseAuth auth;
  const InitialPage({Key? key, required this.auth}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  bool themeState = false;
  @override
  Widget build(BuildContext context) {
    bool val = true;

    return StreamBuilder<User?>(
      stream: widget.auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const MainScreen();
        }
        return AuthScreen(
          auth: widget.auth,
        );
      },
    );
  }
}
