import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pet_project/utils/decorations.dart';
import 'package:pet_project/utils/styles/styles.dart';

class TagTrayItem extends StatefulWidget {
  final bool changeFirstPadding;
  final bool changeLastPadding;
  final String title;
  const TagTrayItem({
    super.key,
    required this.title,
    required this.changeFirstPadding,
    required this.changeLastPadding,
  });

  @override
  State<TagTrayItem> createState() => _TagTrayItemState();
}

class _TagTrayItemState extends State<TagTrayItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: widget.changeFirstPadding ? 0 : 10.0,
        right: widget.changeLastPadding ? 10.0 : 0.0,
      ),
      child: SizedBox(
        width: 100,
        height: 30,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: MentalHealthDecorations.borders.radiusC8,
            border: MentalHealthDecorations.borders.coloredSmall,
          ),
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
              child: Text(
                widget.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: MentalHealthTextStyles.text.mainCommonF16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
