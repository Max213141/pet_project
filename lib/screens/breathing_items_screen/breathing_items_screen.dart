import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_project/common_widgets/common_category_items_screen/common_category_items_screen.dart';
import 'package:pet_project/common_widgets/common_category_screen/widgets/category_item.dart';

class BreathingItemsScreen extends StatefulWidget {
  final String title;
  const BreathingItemsScreen({super.key, required this.title});

  @override
  State<BreathingItemsScreen> createState() => _BreathingItemsScreenState();
}

class _BreathingItemsScreenState extends State<BreathingItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonCategoryItemsScreen(
      title: widget.title,
      child: CategoryCardItem(),
    );
  }
}
