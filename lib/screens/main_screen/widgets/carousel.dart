import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class _CarouselWidgetState extends StatefulWidget {
  const _CarouselWidgetState({super.key});

  @override
  State<_CarouselWidgetState> createState() => __CarouselWidgetStateState();
}

class __CarouselWidgetStateState extends State<_CarouselWidgetState> {
  bool isSelected = true;

  void toggleDates() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  final List<int> _list = List.generate(3, (i) => i);
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final expandedWidth = (MediaQuery.of(context).size.width - 36 - 32) / 2;
    return SizedBox(
      height: 200,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColor.primaryBackgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _list.length,
          itemBuilder: (_, index) {
            return SizedBox(
              width: (MediaQuery.of(context).size.width / 2 - 20) / 2 - 8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: MentalHealthDecorations.borders.radiusC15,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: 100,
                      width: selectedIndex == index
                          ? expandedWidth
                          : expandedWidth / 2,
                      child: Text(
                        '12.35', //TODO _list[index].title
                        style: selectedIndex == index
                            ? MentalHealthTextStyles.text.mainCommonF20White
                            : MentalHealthTextStyles.text.mainCommonF20,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
