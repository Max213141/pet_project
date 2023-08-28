import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_project/blocs/auth_bloc/auth_bloc.dart';
import 'package:pet_project/screens/auth_screen.dart';
import 'package:pet_project/screens/main_screen/main_screen.dart';

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
      stream: BlocProvider.of<AuthBloc>(context).auth.authStateChanges(),
      builder: (context, snapshot) {
        // if (snapshot.hasData) { //Uncomment for proper workflow
        return const MainScreen();
        // }
        // return const AuthScreen();
      },
    );
  }
}
