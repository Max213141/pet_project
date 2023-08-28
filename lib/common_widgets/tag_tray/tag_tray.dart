import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_project/common_widgets/tag_tray/widgets/tag_tray_item.dart';

class TagTray extends StatefulWidget {
  const TagTray({super.key});

  @override
  State<TagTray> createState() => _TagTrayState();
}

class _TagTrayState extends State<TagTray> {
  final List<String> titles = ['Anexiety', 'Stress', 'Sleep', 'Happyness'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width - 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
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
    );
  }
}
