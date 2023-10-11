import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_project/utils/utils.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final void Function(int) onPressed;
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onPressed,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<BottomNavigationBarItem> navIcons = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/icons/home.svg',
          colorFilter: const ColorFilter.mode(
            Colors.black,
            BlendMode.srcIn,
          ),
        ),
        activeIcon: SvgPicture.asset(
          'assets/icons/home.svg',
          colorFilter: const ColorFilter.mode(
            AppColor.primaryBackgroundColor,
            BlendMode.srcIn,
          ),
        ),
        label: ""),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/habits.svg',
        colorFilter: const ColorFilter.mode(
          Colors.black,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        'assets/icons/habits.svg',
        colorFilter: const ColorFilter.mode(
          AppColor.primaryBackgroundColor,
          BlendMode.srcIn,
        ),
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/emotions.svg',
        colorFilter: const ColorFilter.mode(
          Colors.black,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        'assets/icons/emotions.svg',
        colorFilter: const ColorFilter.mode(
          AppColor.primaryBackgroundColor,
          BlendMode.srcIn,
        ),
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/wall.svg',
        colorFilter: const ColorFilter.mode(
          Colors.black,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        'assets/icons/wall.svg',
        colorFilter: const ColorFilter.mode(
          AppColor.primaryBackgroundColor,
          BlendMode.srcIn,
        ),
      ),
      label: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColor.primaryColor,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.primaryBackgroundColor.withOpacity(0.2),
          // iconSize: 50,
          showSelectedLabels: false,
          selectedIconTheme: const IconThemeData(
              color: AppColor.primaryBackgroundColor, size: 30),
          unselectedIconTheme:
              const IconThemeData(color: Colors.black, size: 30),
          showUnselectedLabels: false,
          items: navIcons,
          currentIndex: widget.selectedIndex,
          onTap: (index) => widget.onPressed(index),
        ),
      ),
    );
  }
}
