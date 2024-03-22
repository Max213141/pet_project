import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/utils/utils.dart';

class DeleteUserDialogBody extends StatelessWidget {
  const DeleteUserDialogBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    return AlertDialog(
      backgroundColor: AppColor.primaryBackgroundColor,
      title: Center(
        child: Text(
          l10n.settingsDataDeletionConfirm,
        ),
      ),
      titleTextStyle: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
      content: Text(
        l10n.settingsDataDeletionInfo,
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
              BlocProvider.of<AuthBloc>(context).add(const DeleteUserEvent());
            },
            child: Text(
              l10n.yes,
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
              l10n.no,
              style: MentalHealthTextStyles.text.popinsSecondaryFontF16FW300,
            ),
          ),
        ),
      ],
    );
  }
}
