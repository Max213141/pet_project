import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
      // backgroundColor: Colors.green,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).go('/main'),
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).textTheme.bodyMedium?.color,
            size: 24,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
          ),
        ),
        titleTextStyle: GoogleFonts.sansita(
            fontSize: 24, color: Theme.of(context).textTheme.bodyMedium?.color),
        backgroundColor: Colors.transparent,
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
                minHeight: 110,
                maxHeight: 115,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background),
                  child: Column(
                    children: <Widget>[
                      SearchField(),
                      TagTray(),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: widget.child,
                  );
                },
                childCount: 4,
              ),
            ),
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
