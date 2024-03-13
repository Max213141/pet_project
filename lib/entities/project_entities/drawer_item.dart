import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final String icon;
  final VoidCallback onTap;
  const DrawerItem({
    required this.onTap,
    required this.title,
    required this.icon,
  });
}
