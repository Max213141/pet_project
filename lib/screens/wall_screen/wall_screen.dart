import 'package:flutter/material.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'wall_screen');

class WallScreen extends StatefulWidget {
  const WallScreen({super.key});

  @override
  State<WallScreen> createState() => _WallScreenState();
}

class _WallScreenState extends State<WallScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
          width: MediaQuery.of(context).size.width,
          child: const DecoratedBox(
            decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            'Не готово \n УХАДИ',
            style: MentalHealthTextStyles.text.signikaFontF24,
          ),
        ),
      ],
    );
  }
}
