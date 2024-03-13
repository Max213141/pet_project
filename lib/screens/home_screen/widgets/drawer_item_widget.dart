import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

class DrawerItemWidget extends StatelessWidget {
  final DrawerItem item;
  const DrawerItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.7 - 16;
    return GestureDetector(
      onTap: item.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 12,
        ),
        child: SizedBox(
          height: 30,
          width: width,
          child: Row(
            children: [
              MentalHealthSvgPicture(
                picture: item.icon,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(width: 6),
              Text(
                item.title,
                style: MentalHealthTextStyles.text.popinsSecondaryFontF16FW300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
