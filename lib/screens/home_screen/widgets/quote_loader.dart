import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class QuoteLoader extends StatelessWidget {
  const QuoteLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      child: const DecoratedBox(
        decoration: BoxDecoration(color: AppColor.primaryColor),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColor.primaryBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 85,
                width: 85,
                child: RepaintBoundary(child: Loader()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
