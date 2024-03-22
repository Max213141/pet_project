import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:life_sync/my_app.dart';
import 'package:life_sync/utils/utils.dart';

import 'firebase_options.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await preloadSvgs([
    'assets/icons/home.svg',
    'assets/icons/habits.svg',
    'assets/icons/emotions.svg',
    'assets/icons/wall.svg',
    'assets/emotions/angry.svg',
    'assets/emotions/bored.svg',
    'assets/emotions/good.svg',
    'assets/emotions/happy.svg',
    'assets/emotions/meh.svg',
    'assets/emotions/sad.svg',
    'assets/backgrounds/card_backgound.svg',
    'assets/images/auth_image.svg',
    'assets/breathing_images/hold.svg',
    'assets/backgrounds/first_category_background.svg',
    'assets/backgrounds/second_category_background.svg',
    'assets/backgrounds/third_category_background.svg',
    'assets/backgrounds/third_category_background.svg',
    'assets/intro/first_slide.svg',
    'assets/intro/second_slide.svg',
    'assets/intro/third_slide.svg',
    'assets/intro/forth_slide.svg',
    'assets/shared_stories/edit.svg',
    'assets/shared_stories/edit_selected.svg',
    'assets/shared_stories/view_selected.svg',
    'assets/shared_stories/view.svg',
    'assets/menu_icons/profile.svg',
    'assets/menu_icons/about_us.svg',
    'assets/menu_icons/notifications.svg',
    'assets/menu_icons/support.svg',
    'assets/menu_icons/settings.svg',
    'assets/menu_icons/log_out.svg',
    'assets/socials/telegram.svg',
    'assets/socials/linkedin.svg',
    'assets/socials/gmail.svg',
    'assets/socials/dribbble.svg',
    'assets/socials/instagram.svg',
  ]);

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

  runApp(
    MyApp(
      auth: auth,
    ),
  );
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


