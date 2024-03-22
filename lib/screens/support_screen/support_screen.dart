import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final l10n = l10nOf(context);
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'maksim.kuptsov@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Feedback',
      }),
    );

    return DrawerScreensBody(
      title: l10n.drawerSupport,
      bodyWidgets: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: size.height - MediaQuery.viewPaddingOf(context).top - 45,
              width: size.width - 32,
              child: Column(
                children: [
                  Text(
                    l10n.supportInfo,
                    style:
                        MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
                  ),
                  Row(
                    children: [
                      SocialsButton(
                        onTap: () {
                          launchUrl(
                            Uri.parse('https://t.me/Max2131'),
                            mode: LaunchMode.platformDefault,
                          );
                        },
                        picturePath: 'assets/socials/telegram.svg',
                      ),
                      const SizedBox(width: 4),
                      SocialsButton(
                        onTap: () {
                          launchUrl(
                            Uri.parse(
                              'https://www.linkedin.com/in/maksim-kuptsov/',
                            ),
                            mode: LaunchMode.platformDefault,
                          );
                        },
                        picturePath: 'assets/socials/linkedin.svg',
                      ),
                      const SizedBox(width: 4),
                      SocialsButton(
                        onTap: () {
                          launchUrl(emailLaunchUri);
                        },
                        picturePath: 'assets/socials/gmail.svg',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
