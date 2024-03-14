import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class DeleteUserDialogBody extends StatelessWidget {
  final String message;
  const DeleteUserDialogBody({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
        child: Text(
          "Confirm Deletion",
        ),
      ),
      titleTextStyle: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
      contentTextStyle:
          MentalHealthTextStyles.text.signikaSecondaryFontF16FW300,
      actions: <Widget>[
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              // Add your code for deletion here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("User deleted"),
                ),
              );
            },
            child: Text(
              'Yes',
              style: MentalHealthTextStyles.text.popinsSecondaryFontF16FW300,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'No',
              style: MentalHealthTextStyles.text.popinsSecondaryFontF16FW300,
            ),
          ),
        ),
      ],
    );
  }
}
