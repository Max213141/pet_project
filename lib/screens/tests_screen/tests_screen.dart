import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/common_category_screen/widgets/widgets.dart';
import 'package:pet_project/common_widgets/widgets.dart';

class TestsScreen extends StatefulWidget {
  final String title;
  const TestsScreen({super.key, required this.title});
  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonCategoryScreen(
      title: widget.title,
      child: NewCategoryItem(),
    );
  }
}
