import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/utils/utils.dart';

class DrawerScreensBody extends StatelessWidget {
  final String title;
  final List<Widget>? bodyWidgets;
  const DrawerScreensBody({
    super.key,
    required this.title,
    this.bodyWidgets,
  });

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
            title,
          ),
        ),
        titleTextStyle: MentalHealthTextStyles.text.signikaPrimaryFontF28
            .copyWith(color: AppColor.mainDarkColor),
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
              ...bodyWidgets ?? [],
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
