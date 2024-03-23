import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/common_category_screen/widgets/tag_tray/widgets/tag_tray_item.dart';
import 'package:life_sync/utils/utils.dart';

class TagTray extends StatelessWidget {
  const TagTray({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = ['Anexiety', 'Stress', 'Sleep', 'Happyness'];

    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColor.primaryColor),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
          ),
        ),
        child: SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: ScrollConfiguration(
              behavior: CustomBehavior(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: titles.length,
                itemBuilder: (BuildContext context, int index) {
                  return TagTrayItem(
                    title: titles[index],
                    changeFirstPadding: index == 0,
                    changeLastPadding: index == titles.length,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
