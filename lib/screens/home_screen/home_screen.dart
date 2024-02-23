import 'package:flutter/material.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                      'What are you up to today?',
                      style: MentalHealthTextStyles.text.popinsSecondaryFontF16,
                    ),
                  ),
                ),
              ),
              const CarouselWidget(),
              const ToDoListWidget(),
              const QuoteWidget(),
              const CalendarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
