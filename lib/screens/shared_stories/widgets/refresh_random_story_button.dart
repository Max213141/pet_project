import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class RefreshButton extends StatelessWidget {
  final void Function() onPressed;
  final double size;

  const RefreshButton({
    required this.onPressed,
    this.size = 50,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor:
              WidgetStateProperty.all<Color>(AppColor.sharedStoryChipColor),
          surfaceTintColor:
              WidgetStateProperty.all<Color>(AppColor.sharedStoryChipColor),
          side: WidgetStateProperty.all<BorderSide>(
            const BorderSide(
              width: 1,
              color: AppColor.habbitsTileBackground,
            ),
          ),
          elevation: WidgetStateProperty.all<double>(2.0),
        ),
        child: const Icon(
          Icons.refresh,
          color: AppColor.oneMoreDarkColor,
          size: 30,
          grade: 10,
        ),
      ),
    );
  }
}
