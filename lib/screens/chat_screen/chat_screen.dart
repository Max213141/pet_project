// import 'package:flutter/material.dart';
// import 'package:life_sync/utils/utils.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'chat_screen');

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 25,
//           width: MediaQuery.of(context).size.width,
//           child: const DecoratedBox(
//             decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
//             child: DecoratedBox(
//               decoration: BoxDecoration(
//                 color: AppColor.primaryColor,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(40),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Center(
//           child: Text(
//             'Не готово \n УХАДИ',
//             style: MentalHealthTextStyles.text.signikaFontF24,
//           ),
//         ),
//       ],
//     );
//   }
// }
