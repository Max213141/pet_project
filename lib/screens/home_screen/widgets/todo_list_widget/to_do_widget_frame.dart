import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class ToDoWidgetFrame extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  const ToDoWidgetFrame({
    super.key,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: AppColor.primaryColor,
          ),
          child: Padding(
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: MentalHealthDecorations.borders.radiusBTRightC40,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
