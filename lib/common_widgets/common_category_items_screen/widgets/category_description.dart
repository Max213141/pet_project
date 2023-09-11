import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pet_project/utils/utils.dart';

class CategoryDescription extends StatelessWidget {
  const CategoryDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(color: AppColor.primaryColor),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
            ),
            color: AppColor.primaryBackgroundColor,
            // borderRadius: MentalHealthDecorations.borders.radiusBLeftC40,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              'Metta in Sanskrit means loving kindness, benevolence, good will. The advantages of this type: increasing the ability to sympathize with people; developing positive emotions through empathy, including a more loving relationship with oneself; self-acceptance; awareness of your purpose in life.',
              textAlign: TextAlign.left,
              style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
            ),
          ),
        ),
      ),
    );
  }
}
