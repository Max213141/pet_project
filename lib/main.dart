import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:life_sync/my_app.dart';
import 'package:life_sync/utils/loger.dart';

import 'firebase_options.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //_log('Initialized default app $app');

  FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  //_log('Initialized auth $auth');

  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(MyApp(
    auth: auth,
  ));
}

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print('_firebaseMessagingBackgroundHandler');

//   Future onDidReceiveLocalNotification(
//     int? id,
//     String? title,
//     String? body,
//     String? payload,
//   ) async {
//     print('onDidReceiveLocalNotification');
//   }

//   const channel = AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     // 'This channel is used for important notifications.', // description
//     importance: Importance.high,
//   );

//   var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//   const initializationSettingsAndroid =
//       AndroidInitializationSettings('icon_app');
//   final initializationSettingsIOS = DarwinInitializationSettings(
//       onDidReceiveLocalNotification: onDidReceiveLocalNotification);
//   // final initializationSettingsMacOS = MacOSInitializationSettings();

//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);
//   final initializationSettings = InitializationSettings(
//     android: initializationSettingsAndroid,
//     iOS: initializationSettingsIOS,
//   );
//   await flutterLocalNotificationsPlugin.initialize(
//     initializationSettings,
//     // onSelectNotification: onSelectNotification,
//   );

//   ///Not able to stop default notification
//   ///there fore when custom notification is called
//   ///result is 2 notifications displayed.
//   NotificationDetails _notificationDetails;
//   _notificationDetails = await customNotification(message: message);
//   flutterLocalNotificationsPlugin.show(
//     message.notification.hashCode,
//     message.notification!.title,
//     message.notification!.body,
//     _notificationDetails,
//     payload: '',
//   );

//   // await Firebase.initializeApp();
//   print('Handling a background message ${message.messageId}');
// }

// Future<NotificationDetails> customNotification(
//     {required RemoteMessage message}) async {
//   // print('notificationDetailsBigImage');
//   // final utils = Utils();

//   // final bigPicturePath = await utils.downloadAndSaveFile(
//   //     url: 'https://picsum.photos/536/354', fileName: 'bigPicture');
//   // final bigPictureStyleInformation = BigPictureStyleInformation(
//   //   FilePathAndroidBitmap(bigPicturePath),
//   //   hideExpandedLargeIcon: true,
//   // );
//   const androidPlatformChannelSpecifics = AndroidNotificationDetails(
//     'big text channel name',
//     'big text channel name',
//     // styleInformation: bigPictureStyleInformation,
//     icon: 'icon_app',
//     color: const Color.fromARGB(255, 255, 0, 0),
//     ledColor: const Color.fromARGB(255, 255, 0, 0),
//     ledOnMs: 1000,
//     ledOffMs: 500,
//   );
//   return NotificationDetails(android: androidPlatformChannelSpecifics);
// }


