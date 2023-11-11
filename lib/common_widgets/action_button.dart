import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final double? width;
  // final BuildContext context;
  final void Function() onPressed;

  const ActionButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
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
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColor.primaryBackgroundColor),
        ),
        child: Text(
          title,
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
        ),
      ),
    );
  }
}
