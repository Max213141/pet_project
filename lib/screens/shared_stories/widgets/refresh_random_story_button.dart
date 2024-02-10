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
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColor.sharedStoryChipColor),
          surfaceTintColor:
              MaterialStateProperty.all<Color>(AppColor.sharedStoryChipColor),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              width: 1,
              color: AppColor.habbitsTileBackground,
            ),
          ),
          elevation: MaterialStateProperty.all<double>(2.0),
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
