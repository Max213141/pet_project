import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_project/blocs/blocs.dart';
import 'package:pet_project/utils/utils.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isHomeScreen;
  final Widget title;
  const CustomAppBar({
    super.key,
    required this.preferredSize,
    required this.title,
    required this.isHomeScreen,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  final Size preferredSize;
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = BlocProvider.of<ThemeBloc>(context).state.isDarkTheme;

    return AppBar(
      shape: widget.isHomeScreen
          ? const RoundedRectangleBorder()
          : const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
      title: widget.title,
      elevation: 0,
      backgroundColor: AppColor.primaryBackgroundColor,
      automaticallyImplyLeading: false,
      actions: [
        Switch(
          value: isDarkTheme,
          onChanged: (value) {
            setState(() {
              isDarkTheme = value;
            });
            BlocProvider.of<ThemeBloc>(context)
                .add(ChangeTheme(isDarkTheme: isDarkTheme));
          },
        )
      ],
    );
  }
}