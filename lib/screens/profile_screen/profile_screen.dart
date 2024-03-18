import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class ProfileScreen extends StatefulWidget {
  // final String title;
  const ProfileScreen({
    super.key,
    // required this.title,
  });
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    final size = MediaQuery.of(context).size;
    return DrawerScreensBody(
      title: l10n.drawerProfile,
      bodyWidgets: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: size.height - MediaQuery.viewPaddingOf(context).top - 45,
              width: size.width - 32,
              child: Text(
                  'Здесь наверное будет измененние имени пользователя, пароля, хз чего ещё'),
            ),
          ),
        ),
      ],
    );
  }
}
