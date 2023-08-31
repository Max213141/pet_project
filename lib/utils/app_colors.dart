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

  static const Color mainDarkColor = Color(0xFF373737);
  static const Color buttonsColor = Color(0xFFFF8B72);
}


// import 'package:flutter/material.dart';
// import 'package:pet_project/main_screen.dart';
// import 'package:pet_project/utils/loger.dart';
// import 'package:pet_project/utils/theme_data.dart';

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