import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/home.svg'), label: ""),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/habits.svg'), label: ""),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/chat.svg'), label: ""),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/emotions.svg'), label: ""),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/wall.svg'), label: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: SizedBox(
        // height: 85,
        child: Platform.isIOS
            ? CupertinoTabBar(
                backgroundColor: Color(0xFF373737),
                // iconSize: 50,
                items: items,
              )
            : BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xFF373737),
                // iconSize: 50,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: items,
              ),
      ),
    );
  }
}
