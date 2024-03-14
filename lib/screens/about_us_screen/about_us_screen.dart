import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';

class AboutUsScreen extends StatefulWidget {
  // final String title;
  const AboutUsScreen({
    super.key,
    // required this.title,
  });
  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DrawerScreensBody(
      title: 'About Us',
      bodyWidgets: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: size.height - MediaQuery.viewPaddingOf(context).top - 45,
              width: size.width - 32,
              child: Text(
                  'Здесь наверное будет Инфа о тебе и мне и можно иконки сетей добавить типо линка беханса и тп чтобы при нажатии на них кидало на сайт'),
            ),
          ),
        ),
      ],
    );
  }
}
