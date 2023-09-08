import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/common_category_screen/widgets/widgets.dart';
import 'package:pet_project/common_widgets/widgets.dart';

class MeditationScreen extends StatefulWidget {
  final String title;
  const MeditationScreen({super.key, required this.title});
  @override
  State<MeditationScreen> createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonCategoryScreen(
      title: widget.title,
      child: NewCategoryItem(),
    );
  }
}
