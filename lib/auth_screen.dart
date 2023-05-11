import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// class AuthScreen extends StatelessWidget {
//   final FirebaseAuth auth;

//   const AuthScreen({super.key, required this.auth});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => context.pushReplacement('/main'),
//           child: const Text('Go to the Details screen'),
//         ),
//       ),
//     );
//   }
// }

class AuthScreen extends StatefulWidget {
  final FirebaseAuth auth;

  const AuthScreen({Key? key, required this.auth}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                final String email = _emailController.text;
                final String password = _passwordController.text;
              },
              child: const Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}
