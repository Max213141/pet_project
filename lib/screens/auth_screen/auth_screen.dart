import 'package:flutter/material.dart';
import 'package:pet_project/screens/auth_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: mediaQuery.size.width / 1.3,
              height: mediaQuery.viewInsets.top + 70,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(140),
                  ),
                  color: AppColor.primaryBackgroundColor,
                ),
              ),
            ),
          ),
          Expanded(
            child: AuthScreenBody(),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: mediaQuery.size.width / 1.3,
              height: mediaQuery.viewInsets.bottom + 70,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(140),
                  ),
                  color: AppColor.primaryBackgroundColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
