import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class SupportScreen extends StatefulWidget {
  // final String title;
  const SupportScreen({
    super.key,
    // required this.title,
  });
  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final l10n = l10nOf(context);

    return DrawerScreensBody(
      title: l10n.drawerSupport,
      bodyWidgets: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: size.height - MediaQuery.viewPaddingOf(context).top - 45,
              width: size.width - 32,
              child: Text(
                l10n.supportInfo,
                style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
