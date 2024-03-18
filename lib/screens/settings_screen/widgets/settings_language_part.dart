import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/localization/string_matcher.dart';
import 'package:life_sync/utils/utils.dart';

class SettingsLanguagePart extends StatelessWidget {
  const SettingsLanguagePart({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final currentLocale = BlocProvider.of<LocaleBloc>(context).state.locale;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.settingsChangeLanguage,
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            for (final locale in AppConfig.supportedLocales) ...[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: ActionButton(
                    onPressed: () {
                      BlocProvider.of<LocaleBloc>(context).add(
                        ChangeLocale(locale: locale.languageCode),
                      );
                    },
                    title: StringMatchers.localeTitle(
                      context,
                      locale.languageCode,
                    ),
                    buttonSelected: currentLocale == locale.languageCode,
                    // StringMatchers.localeTitle(
                    //   context,
                    //   locale,
                    // ),
                  ),
                ),
              ),
            ],
          ],
        )
      ],
    );
  }
}
