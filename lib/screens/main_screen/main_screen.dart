import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/auth_bloc/auth_bloc.dart';
import 'package:pet_project/blocs/theme_bloc/theme_bloc.dart';
import 'package:pet_project/common_widgets/bottom_navigation_bar.dart';
import 'package:pet_project/common_widgets/error_dialog.dart';
import 'package:pet_project/screens/main_screen/widgets/widgets.dart';
// import 'package:pet_project/utils/angle_curver.dart';
import 'package:pet_project/utils/loger.dart';
import 'package:pet_project/utils/styles/styles.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = BlocProvider.of<ThemeBloc>(context).state.isDarkTheme;

    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Good day, ',
                  style: MentalHealthTextStyles.text.mainPrimaryFontF20N
                      .copyWith(color: AppColor.oneMoreDarkColor),
                ),
                TextSpan(
                  text: 'Melany ',
                  style: MentalHealthTextStyles.text.userName,
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryBackgroundColor,
        automaticallyImplyLeading: false,
        actions: [
          Switch(
            value: isDarkTheme,
            onChanged: (value) {
              setState(() {
                isDarkTheme = value;
              });
              _log('Is dark theme - $value');
              BlocProvider.of<ThemeBloc>(context)
                  .add(ChangeTheme(isDarkTheme: isDarkTheme));
            },
          )
        ],
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
      bottomNavigationBar: const BottomNavBar(),
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
      body: BlocListener<AuthBloc, AuthState>(
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
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: DecoratedBox(
                  decoration:
                      BoxDecoration(color: AppColor.primaryBackgroundColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('What are you up to today?',
                        style:
                            MentalHealthTextStyles.text.mainSecondaryFontF16),
                  ),
                ),
              ),
              CarouselWidget(),
              ToDoListWidget(),
              Text(
                '${BlocProvider.of<AuthBloc>(context).auth.currentUser?.email ?? 'Email not found'}',
                style: MentalHealthTextStyles.text.mainCommonF14,
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
