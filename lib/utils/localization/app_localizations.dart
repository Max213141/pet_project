import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_be.dart';
import 'app_localizations_en.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('be'),
    Locale('en'),
    Locale('pl'),
    Locale('ru')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'LifeSync'**
  String get appTitle;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to'**
  String get welcome;

  /// No description provided for @welcomeSecond.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get welcomeSecond;

  /// No description provided for @firstIntroSlidePart1.
  ///
  /// In en, this message translates to:
  /// **'our mental health app!'**
  String get firstIntroSlidePart1;

  /// No description provided for @firstIntroSlidePart2.
  ///
  /// In en, this message translates to:
  /// **'We\'re glad to have you here.'**
  String get firstIntroSlidePart2;

  /// No description provided for @secondIntroSlide.
  ///
  /// In en, this message translates to:
  /// **'Discover more about yourself with our psychological tests.'**
  String get secondIntroSlide;

  /// No description provided for @thirdIntroSlide.
  ///
  /// In en, this message translates to:
  /// **'Engage in daily meditation sessions.'**
  String get thirdIntroSlide;

  /// No description provided for @forthIntroSlide.
  ///
  /// In en, this message translates to:
  /// **'Receive personalized recommendations and tips.'**
  String get forthIntroSlide;

  /// No description provided for @authScreenTextPart1.
  ///
  /// In en, this message translates to:
  /// **'We will help you to unlock your inner strength'**
  String get authScreenTextPart1;

  /// No description provided for @authScreenTextPart2.
  ///
  /// In en, this message translates to:
  /// **'and prioritize '**
  String get authScreenTextPart2;

  /// No description provided for @authScreenTextPart3.
  ///
  /// In en, this message translates to:
  /// **'Mental Health'**
  String get authScreenTextPart3;

  /// No description provided for @authGetStartedActionButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get authGetStartedActionButtonTitle;

  /// No description provided for @authUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get authUsername;

  /// No description provided for @authUsernameIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Enter your username'**
  String get authUsernameIsEmpty;

  /// No description provided for @authEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get authEmail;

  /// No description provided for @authEmailIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Enter your Email'**
  String get authEmailIsEmpty;

  /// No description provided for @authPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get authPassword;

  /// No description provided for @authPasswordIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get authPasswordIsEmpty;

  /// No description provided for @authEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get authEmailInvalid;

  /// No description provided for @accountExists.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get accountExists;

  /// No description provided for @registerAccount.
  ///
  /// In en, this message translates to:
  /// **'Register new account! '**
  String get registerAccount;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get logIn;

  /// No description provided for @mainScreenGoodDay.
  ///
  /// In en, this message translates to:
  /// **'Good day, '**
  String get mainScreenGoodDay;

  /// No description provided for @mainScreenHabits.
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get mainScreenHabits;

  /// No description provided for @mainScreenMoodStatistic.
  ///
  /// In en, this message translates to:
  /// **'Mood statistic'**
  String get mainScreenMoodStatistic;

  /// No description provided for @mainScreenSharedStories.
  ///
  /// In en, this message translates to:
  /// **'Shared Stories'**
  String get mainScreenSharedStories;

  /// No description provided for @homeScreenQuestion.
  ///
  /// In en, this message translates to:
  /// **'What are you up to today?'**
  String get homeScreenQuestion;

  /// No description provided for @homeScreenMeditation.
  ///
  /// In en, this message translates to:
  /// **'Meditation'**
  String get homeScreenMeditation;

  /// No description provided for @homeScreenBreathingPractice.
  ///
  /// In en, this message translates to:
  /// **'Breathing practice'**
  String get homeScreenBreathingPractice;

  /// No description provided for @homeScreenSelfTests.
  ///
  /// In en, this message translates to:
  /// **'Self Tests'**
  String get homeScreenSelfTests;

  /// No description provided for @homeScreenToDoListPhrase.
  ///
  /// In en, this message translates to:
  /// **'Check out your habits'**
  String get homeScreenToDoListPhrase;

  /// No description provided for @homeScreenToDoListAdd.
  ///
  /// In en, this message translates to:
  /// **'Add habit'**
  String get homeScreenToDoListAdd;

  /// No description provided for @homeScreenHabitCreationHabit.
  ///
  /// In en, this message translates to:
  /// **'Your habit!'**
  String get homeScreenHabitCreationHabit;

  /// No description provided for @homeScreenHabitCreationIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Add your habit first'**
  String get homeScreenHabitCreationIsEmpty;

  /// No description provided for @homeScreenHabitCreationLenghtError.
  ///
  /// In en, this message translates to:
  /// **'Text length cannot exceed 30 characters'**
  String get homeScreenHabitCreationLenghtError;

  /// No description provided for @homeScreenDefaultQuote.
  ///
  /// In en, this message translates to:
  /// **'Change your thoughts and you will change the world'**
  String get homeScreenDefaultQuote;

  /// No description provided for @habitsScreenPhrase.
  ///
  /// In en, this message translates to:
  /// **'Daily check-in'**
  String get habitsScreenPhrase;

  /// No description provided for @habitsScreenFullCompletion.
  ///
  /// In en, this message translates to:
  /// **'Well done! You are perfect!'**
  String get habitsScreenFullCompletion;

  /// No description provided for @habitsScreenPartCompletion.
  ///
  /// In en, this message translates to:
  /// **'Keep going!'**
  String get habitsScreenPartCompletion;

  /// No description provided for @habitsScreenPartEmptyHabits.
  ///
  /// In en, this message translates to:
  /// **'Add some habits to accomplish them!'**
  String get habitsScreenPartEmptyHabits;

  /// No description provided for @habitsScreenAddHabit.
  ///
  /// In en, this message translates to:
  /// **'Add new habit'**
  String get habitsScreenAddHabit;

  /// No description provided for @moodScreenPhrase.
  ///
  /// In en, this message translates to:
  /// **'Let\'s check up on your mood'**
  String get moodScreenPhrase;

  /// No description provided for @sharedStoriesScreenNoUsersStories.
  ///
  /// In en, this message translates to:
  /// **'There is no user stories...'**
  String get sharedStoriesScreenNoUsersStories;

  /// No description provided for @sharedStoriesScreenNoStories.
  ///
  /// In en, this message translates to:
  /// **'You have no stories, add some...'**
  String get sharedStoriesScreenNoStories;

  /// No description provided for @sharedStoriesScreenAddStory.
  ///
  /// In en, this message translates to:
  /// **'Add Story'**
  String get sharedStoriesScreenAddStory;

  /// No description provided for @sharedStoriesScreenCreationStoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get sharedStoriesScreenCreationStoryTitle;

  /// No description provided for @sharedStoriesScreenCreationStoryTitleEmpty.
  ///
  /// In en, this message translates to:
  /// **'Enter title'**
  String get sharedStoriesScreenCreationStoryTitleEmpty;

  /// No description provided for @sharedStoriesScreenCreationStoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get sharedStoriesScreenCreationStoryDescription;

  /// No description provided for @sharedStoriesScreenCreationStoryDescriptionEmpty.
  ///
  /// In en, this message translates to:
  /// **'Enter description'**
  String get sharedStoriesScreenCreationStoryDescriptionEmpty;

  /// No description provided for @drawerProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get drawerProfile;

  /// No description provided for @drawerAboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get drawerAboutUs;

  /// No description provided for @aboutUsDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Developed by Maksim Kuptsov'**
  String get aboutUsDeveloper;

  /// No description provided for @aboutUsDesigner.
  ///
  /// In en, this message translates to:
  /// **'UI/UX Design by Kristina Haurilova'**
  String get aboutUsDesigner;

  /// No description provided for @aboutUsSecondDesigner.
  ///
  /// In en, this message translates to:
  /// **'and Vera Dzemidzenka'**
  String get aboutUsSecondDesigner;

  /// No description provided for @drawerSupport.
  ///
  /// In en, this message translates to:
  /// **'Help and Support'**
  String get drawerSupport;

  /// No description provided for @supportInfo.
  ///
  /// In en, this message translates to:
  /// **'If you encounter any errors or want to leave feedback or suggestions, you can do so in the comments section in the app store, or here:'**
  String get supportInfo;

  /// No description provided for @drawerSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get drawerSettings;

  /// No description provided for @settingsChangeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change language:'**
  String get settingsChangeLanguage;

  /// No description provided for @settingsChangeTheme.
  ///
  /// In en, this message translates to:
  /// **'Change theme:'**
  String get settingsChangeTheme;

  /// No description provided for @settingsDarkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsDarkTheme;

  /// No description provided for @settingsLightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsLightTheme;

  /// No description provided for @settingsDeleteData.
  ///
  /// In en, this message translates to:
  /// **'Delete User'**
  String get settingsDeleteData;

  /// No description provided for @settingsDataDeletionInfo.
  ///
  /// In en, this message translates to:
  /// **'Data will be deleted, and can\'t be restored, are you sure?'**
  String get settingsDataDeletionInfo;

  /// No description provided for @settingsDataDeletionConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm Deletion'**
  String get settingsDataDeletionConfirm;

  /// No description provided for @drawerLogOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get drawerLogOut;

  /// No description provided for @habits.
  ///
  /// In en, this message translates to:
  /// **'habits'**
  String get habits;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @howAreYou.
  ///
  /// In en, this message translates to:
  /// **'New habit!'**
  String get howAreYou;

  /// No description provided for @emotionHappy.
  ///
  /// In en, this message translates to:
  /// **'Happy'**
  String get emotionHappy;

  /// No description provided for @emotionGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get emotionGood;

  /// No description provided for @emotionMeh.
  ///
  /// In en, this message translates to:
  /// **'Meh'**
  String get emotionMeh;

  /// No description provided for @emotionBored.
  ///
  /// In en, this message translates to:
  /// **'Bored'**
  String get emotionBored;

  /// No description provided for @emotionSad.
  ///
  /// In en, this message translates to:
  /// **'Sad'**
  String get emotionSad;

  /// No description provided for @emotionAngry.
  ///
  /// In en, this message translates to:
  /// **'Angry'**
  String get emotionAngry;

  /// No description provided for @russianLanguage.
  ///
  /// In en, this message translates to:
  /// **'RU'**
  String get russianLanguage;

  /// No description provided for @englishLanguage.
  ///
  /// In en, this message translates to:
  /// **'EN'**
  String get englishLanguage;

  /// No description provided for @belarusianLanguage.
  ///
  /// In en, this message translates to:
  /// **'BY'**
  String get belarusianLanguage;

  /// No description provided for @polishLanguage.
  ///
  /// In en, this message translates to:
  /// **'PL'**
  String get polishLanguage;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['be', 'en', 'pl', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'be':
      return AppLocalizationsBe();
    case 'en':
      return AppLocalizationsEn();
    case 'pl':
      return AppLocalizationsPl();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
