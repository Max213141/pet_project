import 'package:flutter/material.dart';
import 'package:pet_project/utils/utils.dart';

class HabbitsItem extends StatefulWidget {
  const HabbitsItem({super.key});

  @override
  State<HabbitsItem> createState() => _HabbitsItemState();
}

class _HabbitsItemState extends State<HabbitsItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: MentalHealthDecorations.borders.radiusC10,
              color: AppColor.habbitsTileBackground,
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                'Go for a walk',
                maxLines: 1,
                style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
              ),
            ),
          ),
        ),
        Transform.scale(
          scale: 1.4,
          child: Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            checkColor: Colors.white,
            activeColor: AppColor.primaryBackgroundColor,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
          ),
        ),
      ],
    );

    //   CheckboxListTile(
    //     value: isChecked,
    //     onChanged: (bool? value) {

    //     },
    //     shape: RoundedRectangleBorder(
    //       borderRadius: MentalHealthDecorations.borders.radiusC10,
    //     ),
    //     tileColor: AppColor.habbitsTile,
    //     title: Text(
    //       'Go for a walk',
    //       style: MentalHealthTextStyles.text.popinsSecondaryFontF16
    //           .copyWith(fontSize: 14.0),
    //     ),
    //     checkboxShape: RoundedRectangleBorder(
    //       borderRadius: MentalHealthDecorations.borders.radiusC10,
    //     ),
    //   );
    // }
  }
}
