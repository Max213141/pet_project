import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/auth_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class AuthScreenBody extends StatelessWidget {
  const AuthScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SizedBox(
      width: mediaQuery.size.width,
      // height: mediaQuery.size.height -
      //     (mediaQuery.viewPadding.top) -
      //     (mediaQuery.viewPadding.bottom + 70),
      child: DecoratedBox(
        decoration: const BoxDecoration(color: AppColor.primaryBackgroundColor),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to\n',
                        style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                            .copyWith(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'LifeSync',
                        style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                            .copyWith(color: AppColor.primaryBackgroundColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'We will help you to unlock your inner strength\n',
                        style:
                            MentalHealthTextStyles.text.popinsSecondaryFontF14,
                      ),
                      TextSpan(
                        text: 'and prioritize ',
                        style:
                            MentalHealthTextStyles.text.popinsSecondaryFontF14,
                      ),
                      TextSpan(
                        text: 'Mental Health',
                        style: MentalHealthTextStyles
                            .text.popinsSecondaryFontF14
                            .copyWith(color: AppColor.primaryBackgroundColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const MentalHealthSvgPicture(
                  picture: 'assets/images/auth_image.svg',
                  fit: BoxFit.fill,
                ),

                const SizedBox(height: 20),
                ActionButton(
                  title: 'Get started'.toUpperCase(),
                  onPressed: () => trigerAuth(context),
                ),
                const SizedBox(height: 10),
                // GestureDetector(
                //   onTap: () => trigerAuth(context),
                //   child: RichText(
                //     textAlign: TextAlign.center,
                //     text: TextSpan(
                //       children: [
                //         TextSpan(
                //           text: 'Already have an account? ',
                //           style: MentalHealthTextStyles
                //               .text.popinsSecondaryFontF14,
                //         ),
                //         TextSpan(
                //           text: 'Log In',
                //           style: MentalHealthTextStyles
                //               .text.popinsSecondaryFontF14
                //               .copyWith(
                //             color: AppColor.primaryBackgroundColor,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void trigerAuth(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      context: context,
      builder: (context) {
        return const AuthModalBody();
      },
    );
  }
}
