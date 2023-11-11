import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final List<int> _list = List.generate(3, (i) => i);

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final expandedWidth = (MediaQuery.of(context).size.width - 36 - 32) / 2;
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColor.primaryColor),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColor.primaryBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
            child: Center(
              child: ScrollConfiguration(
                behavior: CustomBehavior(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _list.length,
                  itemBuilder: (_, index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: MentalHealthDecorations.borders.radiusC15,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          if (selectedIndex == index) {
                            switch (index) {
                              case 0:
                                GoRouter.of(context).go('/main/meditation');
                                break;
                              case 1:
                                GoRouter.of(context).go('/main/breathing');
                                break;
                              case 2:
                                GoRouter.of(context).go('/main/tests');
                                break;
                              default:
                            }
                          } else {
                            setState(() {
                              selectedIndex = index;
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linear,
                            width: selectedIndex == index
                                ? expandedWidth
                                : expandedWidth / 2,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: MentalHealthDecorations
                                        .borders.radiusC20,
                                    child: DecoratedBox(
                                      decoration: const BoxDecoration(
                                        color: AppColor.primaryColor,
                                      ),
                                      child: getImage(index),
                                    ),
                                  ),
                                ),
                                selectedIndex == index
                                    ? Positioned(
                                        bottom: 0,
                                        left: 0,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomLeft: Radius.circular(18),
                                              ),
                                              color: AppColor
                                                  .secondaryBackgroundColor
                                                  .withOpacity(.5)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 1,
                                              horizontal: 8,
                                            ),
                                            child: getTitle(index),
                                          ),
                                        ),
                                      )
                                    : const SizedBox.shrink()
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getImage(int index) {
    switch (index) {
      case 0:
        return const MentalHealthSvgPicture(
          picture: 'assets/backgrounds/first_category_background.svg',
          fit: BoxFit.fill,
        );

      case 1:
        return const MentalHealthSvgPicture(
          picture: 'assets/backgrounds/second_category_background.svg',
          fit: BoxFit.fill,
        );

      case 2:
        return const MentalHealthSvgPicture(
          picture: 'assets/backgrounds/third_category_background.svg',
          fit: BoxFit.fill,
        );

      default:
        return const MentalHealthSvgPicture(
          picture: 'assets/backgrounds/third_category_background.svg',
          fit: BoxFit.fill,
        );
    }
  }

  Widget getTitle(int index) {
    switch (index) {
      case 0:
        return Text(
          'Meditation',
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22N,
        );

      case 1:
        return Text(
          'Breathing practice',
          style: MentalHealthTextStyles.text.signikaSecondaryFontF16
              .copyWith(color: AppColor.primaryColor),
        );

      case 2:
        return Text(
          'Self Tests',
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22N,
        );

      default:
        return const Text('');
    }
  }
}
