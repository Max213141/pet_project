import 'package:flutter/material.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Center(
      child: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                      color: AppColor.primaryBackgroundColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      l10n.homeScreenQuestion,
                      style: MentalHealthTextStyles.text.popinsSecondaryFontF16,
                    ),
                  ),
                ),
              ),
              const CarouselWidget(),
              const ToDoListWidget(),
              QuoteWidget(l10n: l10n),
              const CalendarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
