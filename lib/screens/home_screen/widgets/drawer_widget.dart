import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      backgroundColor: AppColor.primaryBackgroundColor,
      shadowColor: AppColor.primaryColor,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.4,
            child: DrawerHeader(
              // decoration: const BoxDecoration(
              //   color: AppColor.primaryColor,
              // ),
              child: Text(
                'You can:',
                style: MentalHealthTextStyles.text.signikaFontF24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ActionButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(
                  const LogOutEvent(),
                );
              },
              title: 'Settings',
              buttonColor: AppColor.primaryColor,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: ActionButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(
                  const LogOutEvent(),
                );
              },
              title: 'Log Out',
              buttonColor: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
