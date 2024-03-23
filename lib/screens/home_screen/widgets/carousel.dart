import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColor.primaryColor),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColor.primaryBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
            child: Center(
              child: ScrollConfiguration(
                behavior: CustomBehavior(),
                child: const RepaintBoundary(child: CarouselBody()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
