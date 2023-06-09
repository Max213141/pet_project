import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/common_widgets/spining_widget.dart';

class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            RotatingContainer(),
            const Spacer(),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/main'),
              child: const Text('Go back to the Home screen'),
            ),
          ],
        ),
      ),
    );
  }
}
