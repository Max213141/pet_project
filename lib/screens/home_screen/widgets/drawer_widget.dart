import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    final String? username = HiveStore().getUserName();
    final String? email = HiveStore().getUserEmail();
    final List<DrawerItem> drawerItemsList = [
      DrawerItem(
        title: l10n.drawerProfile,
        icon: 'assets/menu_icons/profile.svg',
        onTap: () => GoRouter.of(context).go('/main/profile_screen'),
      ),
      DrawerItem(
        title: l10n.drawerAboutUs,
        icon: 'assets/menu_icons/about_us.svg',
        onTap: () => GoRouter.of(context).go('/main/about_us_screen'),
      ),
      // DrawerItem(
      //   title: 'Notifications',
      //   icon: 'assets/menu_icons/notifications.svg',
      // ),
      DrawerItem(
        title: l10n.drawerSupport,
        icon: 'assets/menu_icons/support.svg',
        onTap: () => GoRouter.of(context).go('/main/support_screen'),
      ),
      DrawerItem(
        title: l10n.drawerSettings,
        icon: 'assets/menu_icons/settings.svg',
        onTap: () => GoRouter.of(context).go('/main/settings_screen'),
      ),
      DrawerItem(
        title: l10n.drawerLogOut,
        icon: 'assets/menu_icons/log_out.svg',
        onTap: () => BlocProvider.of<AuthBloc>(context).add(
          const LogOutEvent(),
        ),
      )
    ];

    return Drawer(
      elevation: 2,
      backgroundColor: AppColor.drawerColor,
      surfaceTintColor: AppColor.drawerColor,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width * 0.7,
              child: DrawerHeader(
                padding: const EdgeInsets.fromLTRB(4.0, 16.0, 4.0, 8.0),
                margin: EdgeInsets.zero,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username ?? 'Urename',
                      style:
                          MentalHealthTextStyles.text.signikaSecondaryFontF16,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      email ?? 'Mail',
                      style: MentalHealthTextStyles
                          .text.popinsSecondaryFontF16FW300,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: AppColor.drawerDividerColor.withOpacity(.2),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...drawerItemsList.getRange(0, 4).map(
                        (drawerItem) => DrawerItemWidget(item: drawerItem),
                      ),
                  const Spacer(),
                  DrawerItemWidget(item: drawerItemsList.last),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
