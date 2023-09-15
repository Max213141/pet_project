import 'package:flutter/material.dart';
import 'package:pet_project/utils/utils.dart';

class ActionButton extends StatelessWidget {
  // final BuildContext context;

  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 90,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
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
          'Submit',
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
        ),
      ),
    );
  }
}
