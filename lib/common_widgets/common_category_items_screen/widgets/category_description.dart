import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:pet_project/utils/utils.dart';

class CategoryDescription extends StatelessWidget {
  const CategoryDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 6.0),
          child:
              // SizedBox(
              //   height: 55,
              //   child: DecoratedBox(
              //     decoration: BoxDecoration(color: Colors.red),
              //   ),
              // )
              SvgPicture.asset(
            'assets/backgrounds/card_backgound.svg',
            height: MediaQuery.of(context).size.height / 4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Metta in Sanskrit means loving kindness, benevolence, good will. The advantages of this type: increasing the ability to sympathize with people; developing positive emotions through empathy, including a more loving relationship with oneself; self-acceptance; awareness of your purpose in life.',
            textAlign: TextAlign.left,
            style: MentalHealthTextStyles.text.mainCommonF14,
          ),
        )
      ],
    );
  }
}
