import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/settings_screen/widgets/widgets.dart';
import 'package:life_sync/utils/localization/string_matcher.dart';
import 'package:life_sync/utils/utils.dart';

_log(dynamic message) => Logger.projectLog(message, name: 'settings_screen');

class SettingsScreen extends StatefulWidget {
  // final String title;
  const SettingsScreen({
    super.key,
    // required this.title,
  });
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final locale = BlocProvider.of<LocaleBloc>(context).state.locale;

    _log('locale from state - $locale');
    final size = MediaQuery.of(context).size;
    return DrawerScreensBody(
      title: l10n.drawerSettings,
      bodyWidgets: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: size.height - MediaQuery.viewPaddingOf(context).top - 45,
              width: size.width - 32,
              child: Column(
                children: [
                  // DeleteUserButtonWidget(),

                  Row(
                    children: [
                      const Text('Change language:'),
                      const SizedBox(width: 4),
                      Expanded(
                        child: ActionButton(
                          onPressed: () {
                            BlocProvider.of<LocaleBloc>(context).add(
                              ChangeLocale(locale: 'en'),
                            );
                          },
                          title: 'English',
                          // StringMatchers.localeTitle(
                          //   context,
                          //   locale,
                          // ),
                        ),
                      ),
                      Expanded(
                        child: ActionButton(
                          onPressed: () {
                            BlocProvider.of<LocaleBloc>(context).add(
                              ChangeLocale(locale: 'ru'),
                            );
                          },
                          title: 'Russian',
                          // StringMatchers.localeTitle(
                          //   context,
                          //   locale,
                          // ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Text('Select theme:'),
                      const SizedBox(width: 4),
                      Expanded(
                        child: ActionButton(
                          onPressed: () {},
                          title: 'Dark',
                        ),
                      ),
                      Expanded(
                        child: ActionButton(
                          onPressed: () {},
                          title: 'Light',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ActionButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const DeleteUserDialogBody(
                            message:
                                'Data will be deleted, and cant be restored, are you sure?',
                          );
                        },
                      );
                    },
                    title: 'Delete User',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
