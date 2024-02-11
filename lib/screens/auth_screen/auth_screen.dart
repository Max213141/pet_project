import 'package:flutter/material.dart';
import 'package:life_sync/screens/auth_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

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
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: mediaQuery.size.width / 1.3,
                  height: mediaQuery.viewPadding.top + 70,
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
              const Expanded(child: AuthScreenBody()),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: mediaQuery.size.width / 1.3,
                  height: mediaQuery.viewPadding.bottom + 70,
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
        ),
      ),
    );
  }
}
