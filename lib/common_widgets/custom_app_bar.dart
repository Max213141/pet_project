import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHomeScreen;
  final Widget title;
  const CustomAppBar({
    super.key,
    required this.preferredSize,
    required this.title,
    required this.isHomeScreen,
  });

  @override
  Widget build(BuildContext context) {
    // bool isDarkTheme = BlocProvider.of<ThemeBloc>(context).state.isDarkTheme; //TODO dark theme can be used later;

    return AppBar(
      shape: isHomeScreen
          ? const RoundedRectangleBorder()
          : const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
      title: title,
      titleTextStyle: MentalHealthTextStyles.text.signikaSecondaryFontF16,
      elevation: 0,
      backgroundColor: AppColor.primaryBackgroundColor,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.menu), // Replace with your burger menu icon
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
        // Switch(
        //   value: isDarkTheme,
        //   onChanged: (value) {
        //     setState(() {
        //       isDarkTheme = value;
        //     });
        //     BlocProvider.of<ThemeBloc>(context)
        //         .add(ChangeTheme(isDarkTheme: isDarkTheme));
        //   },
        // )
      ],
    );
  }

  @override
  final Size preferredSize;
}
