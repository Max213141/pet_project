import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final double? width;
  final Color? buttonColor;
  final bool? buttonSelected;
  // final BuildContext context;
  final void Function() onPressed;

  const ActionButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    this.buttonColor,
    this.buttonSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width - 90,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: MentalHealthDecorations.borders.radiusC20,
              // side: BorderSide(color: Colors.red)
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(
              buttonColor ?? AppColor.primaryBackgroundColor),
          surfaceTintColor: WidgetStateProperty.all<Color>(
              buttonColor ?? AppColor.primaryBackgroundColor),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(
              width: 1,
              color: buttonColor == AppColor.primaryColor
                  ? AppColor.primaryBackgroundColor
                  : AppColor.habbitsTileBackground,
            ),
          ),
          elevation: WidgetStateProperty.all<double>(
              (buttonSelected ?? false) ? 10.0 : 2.0),
        ),
        child: FittedBox(
          child: Text(
            title,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
          ),
        ),
      ),
    );
  }
}
