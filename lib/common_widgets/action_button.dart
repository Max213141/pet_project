import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final double? width;
  final Color? buttonColor;
  // final BuildContext context;
  final void Function() onPressed;

  const ActionButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width - 90,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: MentalHealthDecorations.borders.radiusC20,
              // side: BorderSide(color: Colors.red)
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              buttonColor ?? AppColor.primaryBackgroundColor),
          surfaceTintColor: MaterialStateProperty.all<Color>(
              buttonColor ?? AppColor.primaryBackgroundColor),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              width: 1,
              color: AppColor.habbitsTileBackground,
            ),
          ),
          elevation: MaterialStateProperty.all<double>(2.0),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
        ),
      ),
    );
  }
}
