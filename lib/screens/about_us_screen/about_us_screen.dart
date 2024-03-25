import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final l10n = l10nOf(context);

    return DrawerScreensBody(
      title: l10n.drawerAboutUs,
      bodyWidgets: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: size.height - MediaQuery.viewPaddingOf(context).top - 45,
              width: size.width - 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.aboutUsDeveloper,
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
                    ],
                  ),
                  const Divider(),
                  Text(
                    l10n.aboutUsDesigner,
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
                          launchUrl(
                            Uri.parse(
                              'https://www.linkedin.com/in/maksim-kuptsov/',
                            ),
                            mode: LaunchMode.platformDefault,
                          );
                        },
                        picturePath: 'assets/socials/dribbble.svg',
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
                        picturePath: 'assets/socials/behance.svg',
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    l10n.aboutUsSecondDesigner,
                    style:
                        MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
                  ),
                  const SizedBox(width: 4),
                  SocialsButton(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://www.instagram.com/dsgnvera?igsh=MWlkM3E2dWloYW0zNQ==',
                        ),
                        mode: LaunchMode.platformDefault,
                      );
                    },
                    picturePath: 'assets/socials/instagram.svg',
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
