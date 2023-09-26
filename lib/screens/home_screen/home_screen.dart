import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/blocs.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/screens/home_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
      child: Center(
        child: ScrollConfiguration(
          behavior: CustomBehavior(),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                        color: AppColor.primaryBackgroundColor),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('What are you up to today?',
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF16),
                    ),
                  ),
                ),
                const CarouselWidget(),
                const ToDoListWidget(),
                const QuoteWidget(),
                const CalendarWidget(),
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
