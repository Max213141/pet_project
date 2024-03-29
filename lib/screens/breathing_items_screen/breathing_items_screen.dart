import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/common_widgets/common_category_items_screen/widgets/category_description.dart';
import 'package:life_sync/screens/breathing_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class BreathingItemsScreen extends StatelessWidget {
  final String title;

  const BreathingItemsScreen({
    super.key,
    required this.title,
  });

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
            title,
          ),
        ),
        titleTextStyle: MentalHealthTextStyles.text.mainTitleF24,
        backgroundColor: AppColor.primaryBackgroundColor,
        elevation: 0,
      ),
      // bottomNavigationBar: const BottomNavBar(),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverGridDelegate(
                minHeight: 0,
                maxHeight: MediaQuery.of(context).size.height / 6,
                child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                  child: CategoryDescription(),
                ),
              ),
            ),
            // SliverPersistentHeader(
            //   pinned: true,
            //   delegate: _SliverGridDelegate(
            //     minHeight: 56,
            //     maxHeight: 56,
            //     child: const DecoratedBox(
            //       decoration: BoxDecoration(color: Colors.white),
            //       child: TagTray(),
            //     ),
            //   ),
            // ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverGridDelegate(
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
              child: DecoratedBox(
                decoration: const BoxDecoration(color: AppColor.primaryColor),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 230.0,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        onTap: () => showModalBottomSheet(
                          useSafeArea: true,
                          showDragHandle: true,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                              child: const CategoryItemBottomSheetBody(),
                            );
                          },
                        ),
                        child: const Center(
                          child: CategoryItem(),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SliverGridDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverGridDelegate({
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
  bool shouldRebuild(_SliverGridDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
