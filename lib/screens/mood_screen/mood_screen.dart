import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/screens/mood_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'mood_screen');

class MoodScreen extends StatefulWidget {
  const MoodScreen({super.key});

  @override
  State<MoodScreen> createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
          ),
        ),
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            color: AppColor.mainDarkColor,
            size: 24,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Mood statistic',
          ),
        ),
        titleTextStyle: MentalHealthTextStyles.text.signikaPrimaryFontF28,
        backgroundColor: AppColor.primaryBackgroundColor,
        elevation: 0,
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) {
            return const Center(child: DevMenuWidget());
          },
        ),
        child: Text('M'),
      ),
      // bottomNavigationBar: const BottomNavBar(),
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
              width: MediaQuery.of(context).size.width,
              child: const DecoratedBox(
                decoration:
                    BoxDecoration(color: AppColor.primaryBackgroundColor),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
            const MoodCarouselPicker(),
            const SizedBox(height: 22),
            ActionButton(
              title: 'Submit'.toUpperCase(),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
