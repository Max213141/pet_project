import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/entities/entities.dart';
import 'package:pet_project/screens/habits_screen/habits_screen.dart';
import 'package:pet_project/screens/home_screen/home_screen.dart';
import 'package:pet_project/screens/mood_screen/mood_screen.dart';
import 'package:pet_project/screens/shared_stories/shared_stories.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
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
  getAppBarTitle() {
    final String? username = HiveStore().getUserName();
    switch (_selectedIndex) {
      case 0:
        return Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Good day, ',
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
            'Habits',
            style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                .copyWith(color: Colors.black),
          ),
        );
      case 2:
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Mood statistic',
            style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                .copyWith(color: Colors.black),
          ),
        );
      case 3:
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Cry',
            style: MentalHealthTextStyles.text.signikaPrimaryFontF28
                .copyWith(color: Colors.black),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,

      appBar: CustomAppBar(
        isHomeScreen: _selectedIndex == 0,
        title: getAppBarTitle(),
        preferredSize: const Size.fromHeight(56),
      ),

      floatingActionButton: ElevatedButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) {
            return const Center(child: DevMenuWidget());
          },
        ),
        child: const Text('M'),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onPressed: _onItemTapped,
      ),
      // navigationBar: CupertinoNavigationBar(
      //     middle: const Text('Switch theme'),
      //     trailing: CupertinoSwitch(
      //       value: isDarkTheme,
      //       onChanged: (value) {
      //         setState(() {
      //           isDarkTheme = value;
      //         });
      //         _log('Is dark theme - $value');
      //         BlocProvider.of<ThemeBloc>(context)
      //             .add(ChangeTheme(isDarkTheme: isDarkTheme));
      //       },
      //     )),
      body: _screens.elementAt(_selectedIndex),
    );
  }
}
