import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/meditation_screen/widget/widgets.dart';

class MeditationScreen extends StatelessWidget {
  final String title;
  const MeditationScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final List<MeditationEntity> testsList = [
      const MeditationEntity(
        image: 'assets/backgrounds/card_backgound.svg',
        title: 'Breathing 4-7-8',
      ),
      const MeditationEntity(
        image: 'assets/backgrounds/card_backgound.svg',
        title: 'Diaphragmatic breathing',
      ),
      const MeditationEntity(
        image: 'assets/backgrounds/card_backgound.svg',
        title: 'Square breath',
      ),
      const MeditationEntity(
        image: 'assets/backgrounds/card_backgound.svg',
        title: 'Square breath',
      ),
      const MeditationEntity(
        image: 'assets/backgrounds/card_backgound.svg',
        title: 'Oxford Happiness Questionnaire',
      ),
    ];
    return DrawerScreensBody(
      title: 'Meditation',
      bodyWidgets: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.viewPaddingOf(context).top -
                  45,
              width: MediaQuery.of(context).size.width - 32,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: testsList.map(
                    (e) {
                      return MeditationItem(
                        title: e.title,
                        image: e.image,
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
