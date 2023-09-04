import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/blocs.dart';
import 'package:pet_project/utils/utils.dart';

class DevMenuWidget extends StatelessWidget {
  const DevMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: MentalHealthDecorations.borders.radiusC20,
          color: AppColor.mainDarkColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(
                  const LogOutEvent(),
                );
              },
              child: const Text('Log Out'),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/main/breathing'),
              child: const Text('Go to the Details screen'),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/main/tests'),
              child: const Text('Go to the Tests screen'),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/main/meditation'),
              child: const Text('Go to the Meditation screen'),
            ),
          ],
        ),
      ),
    );
  }
}
