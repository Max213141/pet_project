import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColorLight = Color(0xFF2196F3);
  static const Color accentColorLight = Color(0xFFFF9800);
  static const Color backgroundColorLight = Color(0xFFF5F5F5);
  static const Color textColorLight = Color(0xFF212121);

  static const Color primaryColorDark = Color(0xFFFFFFFF);
  static const Color accentColorDark = Color(0xFF03DAC6);
  static const Color backgroundColorDark = Color(0xFF121212);
  static const Color textColorDark = Color(0xFF111111);

  static const Color introButtonColor = Color(0xFFDDDDDD);
  static const Color primaryColor = Color(0xFFFAF0DF);
  static const Color primaryBackgroundColor = Color(0xFF9BCD90);
  static const Color secondaryBackgroundColor = Color(0xFF54744C);
  static const Color mainDarkColor = Color(0xFF373737);
  static const Color buttonsColor = Color(0xFFFF8B72);
  static const Color oneMoreDarkColor = Color(0xFF252525);
  static const Color habbitsTileBackground = Color(0xFFFAFAFA);
  static const Color chartsColor = Color(0xFFE2E7CB);
  static const Color authFieldsTextGray = Color(0xFFBDBDBD);
  static const Color sharedStoryChipColor = Color(0xFFF6E8CF);
  static const Color drawerColor = Color(0xFFFBFBFB);
  static const Color drawerDividerColor = Color(0xFF717171);

  static const Color authFieldsGray = Color(0xFFF6F6F6);

  static const Color authFieldsBordersGray = Color(0xFFE8E8E8);

  static const List<Color> radialDiagramColors = <Color>[
    Color(0xFFFFFFFF),
    Color(0xFF9BCD90),
  ];

  static const Color chartHappy = Color(0xFFFFC75B);
  static const Color chartGood = Color(0xFF9BCD8F);
  static const Color chartMeh = Color(0xFF5C8D9F);
  static const Color chartBored = Color(0xFFCCA5F2);
  static const Color chartSad = Color(0xFF8BD5F0);
  static const Color chartAngry = Color(0xFFFF7374);
}


// import 'package:flutter/material.dart';
// import 'package:life_sync/main_screen.dart';
// import 'package:life_sync/utils/loger.dart';
// import 'package:life_sync/utils/theme_data.dart';

// void //_log(dynamic message) => Logger.projectLog(message, name: 'main');

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.light);

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<ThemeMode>(
//       valueListenable: _notifier,
//       builder: (_, mode, __) {
//         return MaterialApp(
//           theme: ThemeData.light(),
//           darkTheme: ThemeData.dark(),
//           themeMode: mode, // Decides which theme to show, light or dark.
//           home: Scaffold(
//             floatingActionButton: ElevatedButton(
//               child: Text('Switch theme'),
//               onPressed: () => _notifier.value =
//                   mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
//             ),
//             appBar: AppBar(
//               title: Text('Главная страница'),
//             ),
//             body: Center(
//               child: ElevatedButton(
//                 onPressed: () => _notifier.value =
//                     mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
//                 child: Text('Toggle Theme'),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }