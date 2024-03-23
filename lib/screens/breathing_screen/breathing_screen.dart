import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

import 'widgets/widgets.dart';

class BreathingPracticeScreen extends StatelessWidget {
  final String title;
  const BreathingPracticeScreen({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return DrawerScreensBody(
      title: 'Breathing Practice',
      bodyWidgets: [
        SliverPersistentHeader(
          pinned: true,
          delegate: _SliverFiltersDelegate(
            minHeight: 56,
            maxHeight: 56,
            child: const TagTray(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
            child: SizedBox(
              height: 216,
              width: MediaQuery.of(context).size.height - 32,
              child: ScrollConfiguration(
                behavior: CustomBehavior(),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height - 32,
                      child: Row(
                        children: [
                          const MainCategoryItem(),
                          const SizedBox(width: 6),
                          Expanded(
                            child: GridView.builder(
                              // shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 110.0,
                                crossAxisCount: 2,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => GoRouter.of(context)
                                      .go('/main/breathing/breathing_items'),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.0, vertical: 4.0),
                                    child: NewCategoryItem(),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Meditations by tags',
              style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
            ),
          ),
        ),
      ],
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
