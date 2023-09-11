import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/utils/utils.dart';

import 'widgets/widgets.dart';

class CommonCategoryScreen extends StatefulWidget {
  final Widget child;
  final String title;
  const CommonCategoryScreen({
    super.key,
    required this.title,
    required this.child,
  });
  @override
  State<CommonCategoryScreen> createState() => _CommonCategoryScreenState();
}

class _CommonCategoryScreenState extends State<CommonCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
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
        titleTextStyle: GoogleFonts.sansita(fontSize: 24, color: Colors.black),
        backgroundColor: AppColor.primaryBackgroundColor,
        elevation: 0,
      ),
      // bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 16,
        ),
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
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverFiltersDelegate(
                minHeight: 56,
                maxHeight: 56,
                child: TagTray(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
                child: SizedBox(
                  height: 216,
                  width: MediaQuery.of(context).size.height - 32,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height - 32,
                        child: Row(
                          children: [
                            MainCategoryItem(),
                            SizedBox(width: 6),
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
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0, vertical: 4.0),
                                      child: widget.child,
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
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Meditations by tags',
                  style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
                ),
              ),
            )

            // SliverPersistentHeader(
            //   pinned: true,
            //   delegate: _SliverFiltersDelegate(
            //     minHeight: 110,
            //     maxHeight: 115,
            //     child: DecoratedBox(
            //       decoration: BoxDecoration(
            //           color: Theme.of(context).colorScheme.background),
            //       child: Column(
            //         children: <Widget>[
            //           SearchField(),
            //           TagTray(),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 16),
            //         child: widget.child,
            //       );
            //     },
            //     childCount: 4,
            //   ),
            // ),
          ],
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
