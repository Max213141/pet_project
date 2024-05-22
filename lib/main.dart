import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:life_sync/my_app.dart';
import 'package:life_sync/utils/utils.dart';

import 'firebase_options.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await preloadSvgs(
    [
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
      'assets/socials/behance.svg',
    ],
  );

  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final GoogleSignIn googleSignIn = GoogleSignIn();
  //_log('Initialized auth $auth');

  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    MyApp(
      auth: auth,
      googleSignIn: googleSignIn,
    ),
  );
}
