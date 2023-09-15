import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/auth_bloc/auth_bloc.dart';
import 'package:pet_project/blocs/theme_bloc/theme_bloc.dart';
import 'package:pet_project/common_widgets/bottom_navigation_bar.dart';
import 'package:pet_project/common_widgets/error_dialog.dart';
import 'package:pet_project/screens/home_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = BlocProvider.of<ThemeBloc>(context).state.isDarkTheme;

    return Scaffold(
      backgroundColor: AppColor.primaryColor,

      appBar: AppBar(
        title: Align(
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
          child: ScrollConfiguration(
            behavior: CustomBehavior(),
            child: ListView(
              padding: EdgeInsets.zero,

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
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF16),
                    ),
                  ),
                ),
                CarouselWidget(),
                ToDoListWidget(),
                QuoteWidget(),
                CalendarWidget(),
                // Text(
                //   '${BlocProvider.of<AuthBloc>(context).auth.currentUser?.email ?? 'Email not found'}',
                //   style: MentalHealthTextStyles.text.mainCommonF14,
                // ),
                // const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
