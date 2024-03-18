import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class ErrorDialogWidget extends StatelessWidget {
  final String message;

  const ErrorDialogWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error,
              color: AppColor.primaryBackgroundColor,
              size: 50.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Flexible(
              child: Text(
                message,
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16FW300,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: const Size(100.0, 50.0),
              ),
              child: Text(
                l10n.ok,
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16FW300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
