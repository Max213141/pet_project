import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/common_category_screen/common_category_screen.dart';
import 'package:pet_project/common_widgets/common_category_screen/widgets/widgets.dart';

class BreathingPracticeScreen extends StatefulWidget {
  final String title;

  const BreathingPracticeScreen({super.key, required this.title});

  @override
  State<BreathingPracticeScreen> createState() =>
      _BreathingPracticeScreenState();
}

class _BreathingPracticeScreenState extends State<BreathingPracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonCategoryScreen(
      title: widget.title,
      child: NewCategoryItem(),
    );
  }
}
