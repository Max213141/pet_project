import 'package:flutter/material.dart';
import 'package:pet_project/utils/decorations.dart';

class BreathingTimerSwitcher extends StatefulWidget {
  const BreathingTimerSwitcher({super.key});
  @override
  State<BreathingTimerSwitcher> createState() => _BreathingTimerSwitcherState();
}

class _BreathingTimerSwitcherState extends State<BreathingTimerSwitcher> {
  DateTime date1 = DateTime.now();
  DateTime date2 = DateTime.now().add(Duration(days: 7));
  bool isDate1Selected = true;
  bool _isAnimated = true;

  void toggleDates() {
    setState(() {
      isDate1Selected = !isDate1Selected;
    });
  }

  String formatDate(DateTime date) {
    return "${date.day}.${date.month}.${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    initState(); // Состояние для управления анимацией
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: MentalHealthDecorations.borders.radiusC10),
        child: Row(
          children: [],
        ),
      ),
    );
  }
}

// Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           AnimatedContainer(
//             duration: Duration(milliseconds: 300), // Длительность анимации
//             color: _isAnimated ? Colors.blue : Colors.transparent,
//             padding: EdgeInsets.all(8.0),
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   _isAnimated = !_isAnimated;
//                 });
//               },
//               child: Text(
//                 'Hello',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//           SizedBox(width: 10), // Пространство между виджетами
//           AnimatedContainer(
//             duration: Duration(milliseconds: 300), // Длительность анимации
//             color: _isAnimated ? Colors.transparent : Colors.blue,
//             padding: EdgeInsets.all(8.0),
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   _isAnimated = !_isAnimated;
//                 });
//               },
//               child: Text(
//                 'Decorated Text',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
