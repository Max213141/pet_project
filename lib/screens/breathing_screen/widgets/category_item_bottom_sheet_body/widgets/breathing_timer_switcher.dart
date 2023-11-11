import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class BreathingTimerSwitcher extends StatefulWidget {
  const BreathingTimerSwitcher({super.key});
  @override
  State<BreathingTimerSwitcher> createState() => _BreathingTimerSwitcherState();
}

class _BreathingTimerSwitcherState extends State<BreathingTimerSwitcher> {
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
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 20,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: MentalHealthDecorations.borders.radiusC10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
          child: ScrollConfiguration(
            behavior: CustomBehavior(),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _list.length,
              itemBuilder: (_, index) {
                return SizedBox(
                  width: (MediaQuery.of(context).size.width / 2 - 20) / 2 - 8,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: MentalHealthDecorations.borders.radiusC10,
                      color: selectedIndex == index
                          ? AppColor.mainDarkColor
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        // contentPadding: const EdgeInsets.symmetric(
                        //   vertical: 4,
                        //   horizontal: 13,
                        // ),
                        title: Align(
                          alignment: Alignment.topCenter,
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
        ),
      ),
    );
  }
}

// Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               GestureDetector(
//                 onTap: () => toggleDates(),
//                 child: SizedBox(
//                   child: DecoratedBox(
//                     decoration: BoxDecoration(
//                       borderRadius: MentalHealthDecorations.borders.radiusC10,
//                       color:
//                           isSelected ? AppColor.mainDarkColor : Colors.white,
//                     ),
//                     child: Center(
//                       child: Padding(
                      
//                         child: Text(
//                           '12.35',
//                           style: isSelected
//                               ? MentalHealthTextStyles.text.mainCommonF20White
//                               : MentalHealthTextStyles.text.mainCommonF20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () => toggleDates(),
//                 child: SizedBox(
//                   width: (MediaQuery.of(context).size.width / 2 - 20) / 2 - 8,
//                   child: DecoratedBox(
                   
//                         color: isSelected
//                             ? AppColor.mainDarkColor
//                             : Colors.white),
//                     child: Center(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 4.0, horizontal: 4),
//                         child: Text(
//                           '13.35',
//                           style: isSelected
//                               ? MentalHealthTextStyles.text.mainCommonF20White
//                               : MentalHealthTextStyles.text.mainCommonF20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),