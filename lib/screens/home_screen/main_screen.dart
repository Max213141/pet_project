import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/habits_screen/habits_screen.dart';
import 'package:life_sync/screens/home_screen/home_screen.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/screens/mood_screen/mood_screen.dart';
import 'package:life_sync/screens/shared_stories/shared_stories.dart';
import 'package:life_sync/utils/localization/app_localizations.dart';
import 'package:life_sync/utils/utils.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  double navBarHeight = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const HabitsScreen(),
    const MoodScreen(),
    const SharedStoriesScreen(),
  ];

  getAppBarTitle(AppLocalizations l10n) {
    final String? username = HiveStore().getUserName();
    switch (_selectedIndex) {
      case 0:
        return Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: l10n.mainScreenGoodDay,
                  style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                      .copyWith(color: AppColor.oneMoreDarkColor),
                ),
                TextSpan(
                  text: username,
                  style: MentalHealthTextStyles.text.userName,
                ),
              ],
            ),
          ),
        );

      case 1:
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            l10n.mainScreenHabits,
            style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                .copyWith(color: Colors.black),
          ),
        );
      case 2:
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            l10n.mainScreenMoodStatistic,
            style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                .copyWith(color: Colors.black),
          ),
        );
      case 3:
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            l10n.mainScreenSharedStories,
            style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                .copyWith(color: Colors.black),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          logOutSuccess: () {
            GoRouter.of(context).go('/initial_page');
          },
          authError: (errorText) => showDialog(
            context: context,
            builder: (BuildContext context) {
              return ErrorDialogWidget(
                message: errorText,
              );
            },
          ),
        );
      },
      child: Scaffold(
        endDrawer: const DrawerWidget(),
        backgroundColor: AppColor.primaryColor,
        appBar: CustomAppBar(
          isHomeScreen: _selectedIndex == 0,
          title: getAppBarTitle(l10n),
          preferredSize: const Size.fromHeight(56),
        ),
        // floatingActionButton: ElevatedButton(
        //   onPressed: () => showDialog(
        //     context: context,
        //     builder: (context) {
        //       return const Center(child: DevMenuWidget());
        //     },
        //   ),
        //   child: const Text('M'),
        // ),
        bottomNavigationBar: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return BottomNavBar(
              selectedIndex: _selectedIndex,
              onPressed: _onItemTapped,
            );
          },
        ),
        body: _screens.elementAt(_selectedIndex),
      ),
    );
  }
}
