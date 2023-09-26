import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/entities/entities.dart';
import 'package:pet_project/screens/tests_screen/widget/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class TestsScreen extends StatefulWidget {
  final String title;
  const TestsScreen({super.key, required this.title});
  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  final List<TestEntity> testsList = [
    const TestEntity(
      image: 'assets/tests/first.svg',
      title: 'Depression test (PHQ-9)',
    ),
    const TestEntity(
      image: 'assets/tests/second.svg',
      title: 'Satisfaction with life',
    ),
    const TestEntity(
      image: 'assets/tests/third.svg',
      title: 'Beck Anxiety Scale',
    ),
    const TestEntity(
      image: 'assets/tests/forth.svg',
      title: 'Beck Hopelessness Scale',
    ),
    const TestEntity(
      image: 'assets/tests/fifth.svg',
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
        titleTextStyle: MentalHealthTextStyles.text.signikaPrimaryFontF28,
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
                        children: testsList.map((e) {
                          return TestItem(
                            title: e.title,
                            image: e.image,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
              // const SliverToBoxAdapter(child: SizedBox(height: 8)),
              // SliverToBoxAdapter(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //     child: Text(
              //       'Meditations by tags',
              //       style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
              //     ),
              //   ),
              // ),
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
