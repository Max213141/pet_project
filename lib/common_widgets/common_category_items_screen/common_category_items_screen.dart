import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/common_widgets/common_category_items_screen/widgets/category_description.dart';
import 'package:pet_project/common_widgets/common_category_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class CommonCategoryItemsScreen extends StatefulWidget {
  final String title;
  final Widget child;
  const CommonCategoryItemsScreen(
      {super.key, required this.title, required this.child});

  @override
  State<CommonCategoryItemsScreen> createState() =>
      _CommonCategoryItemsScreenState();
}

class _CommonCategoryItemsScreenState extends State<CommonCategoryItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
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
              pinned: false,
              delegate: _SliverFiltersDelegate(
                minHeight: MediaQuery.of(context).size.height / 4 + 12 + 95,
                maxHeight: MediaQuery.of(context).size.height / 4 + 12 + 95,
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      // SearchField(),
                      TagTray(),
                      CategoryDescription(),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFD7A6).withOpacity(.35),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: widget.child,
                    ),
                  );
                },
                childCount: 10,
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
