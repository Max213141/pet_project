import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/auth_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class AuthScreenBody extends StatelessWidget {
  const AuthScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final l10n = l10nOf(context);

    return Center(
      child: SizedBox(
        width: mediaQuery.size.width,
        // height: mediaQuery.size.height -
        //     (mediaQuery.viewPadding.top) -
        //     (mediaQuery.viewPadding.bottom + 70),
        child: DecoratedBox(
          decoration:
              const BoxDecoration(color: AppColor.primaryBackgroundColor),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${l10n.welcome}\n',
                          style: MentalHealthTextStyles
                              .text.signikaPrimaryFontF28
                              .copyWith(color: Colors.black),
                        ),
                        TextSpan(
                          text: l10n.appTitle,
                          style: MentalHealthTextStyles
                              .text.signikaPrimaryFontF28
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
                          text: '${l10n.authScreenTextPart1} \n',
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF14,
                        ),
                        TextSpan(
                          text: l10n.authScreenTextPart2,
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF14,
                        ),
                        TextSpan(
                          text: l10n.authScreenTextPart3,
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF14
                              .copyWith(color: AppColor.primaryBackgroundColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height / 2.5,
                      child: MentalHealthSvgPicture(
                        picture: 'assets/images/auth_image.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ActionButton(
                    title: l10n.authGetStartedActionButtonTitle.toUpperCase(),
                    onPressed: () => trigerAuth(context),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void trigerAuth(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColor.primaryColorDark,
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
        return const AuthModalBodyWrapper();
      },
    );
  }
}
