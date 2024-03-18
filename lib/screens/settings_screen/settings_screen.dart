import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/settings_screen/widgets/widgets.dart';
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
                  const SettingsLanguagePart(),
                  const SizedBox(height: 4),
                  const Divider(),
                  const SizedBox(height: 4),
                  const ThemeSettingsPart(),
                  const SizedBox(height: 4),
                  const Divider(),
                  const SizedBox(height: 4),
                  ActionButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const DeleteUserDialogBody();
                        },
                      );
                    },
                    title: l10n.settingsDeleteData,
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
