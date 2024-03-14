import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/tests_screen/widget/widgets.dart';

class TestsScreen extends StatefulWidget {
  final String title;
  const TestsScreen({super.key, required this.title});
  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  final List<TestEntity> testsList = [
    const TestEntity(
      image: 'assets/backgrounds/card_backgound.svg',
      title: 'Depression test (PHQ-9)',
    ),
    const TestEntity(
      image: 'assets/backgrounds/card_backgound.svg',
      title: 'Satisfaction with life',
    ),
    const TestEntity(
      image: 'assets/backgrounds/card_backgound.svg',
      title: 'Beck Anxiety Scale',
    ),
    const TestEntity(
      image: 'assets/backgrounds/card_backgound.svg',
      title: 'Beck Hopelessness Scale',
    ),
    const TestEntity(
      image: 'assets/backgrounds/card_backgound.svg',
      title: 'Oxford Happiness Questionnaire',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DrawerScreensBody(
      title: 'Psychological Tests',
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
                      return TestItem(
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
