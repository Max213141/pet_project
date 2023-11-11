import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/meditation_screen/widget/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class MeditationScreen extends StatefulWidget {
  final String title;
  const MeditationScreen({super.key, required this.title});
  @override
  State<MeditationScreen> createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
          ),
        ),
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            color: AppColor.mainDarkColor,
            size: 24,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
          ),
        ),
        titleTextStyle:
            MentalHealthTextStyles.text.signikaPrimaryFontF28.copyWith(
          color: AppColor.mainDarkColor,
        ),
        backgroundColor: AppColor.primaryBackgroundColor,
        elevation: 0,
      ),
      // bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 16,
        ),
        child: ScrollConfiguration(
          behavior: CustomBehavior(),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverFiltersDelegate(
                  minHeight: 20,
                  maxHeight: 20,
                  child: const DecoratedBox(
                    decoration:
                        BoxDecoration(color: AppColor.primaryBackgroundColor),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
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
          ),
        ),
      ),
    );
  }
}

class _SliverFiltersDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverFiltersDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverFiltersDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
