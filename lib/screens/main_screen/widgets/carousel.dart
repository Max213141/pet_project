import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/utils/utils.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  bool isSelected = true;

  void toggleDates() {
    setState(() {
      isSelected = !isSelected;
    });
  }

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
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _list.length,
                itemBuilder: (_, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: MentalHealthDecorations.borders.radiusC15,
                    ),
                    child: GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          selectedIndex = index;
                        });

                        switch (index) {
                          case 0:
                            GoRouter.of(context).go('/main/breathing');
                            break;
                          case 1:
                            GoRouter.of(context).go('/main/tests');
                            break;

                          case 2:
                            GoRouter.of(context).go('/main/meditation');
                            break;
                          default:
                        }
                      },
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear,
                          width: selectedIndex == index
                              ? expandedWidth
                              : expandedWidth / 2,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius:
                                      MentalHealthDecorations.borders.radiusC20,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: AppColor.primaryColor),
                                    child: SvgPicture.asset(
                                      'assets/backgrounds/carousel_back.svg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              selectedIndex == index
                                  ? Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(18),
                                            ),
                                            color: AppColor
                                                .secondaryBackgroundColor
                                                .withOpacity(.5)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 1,
                                            horizontal: 8,
                                          ),
                                          child: Text(
                                            'Meditation',
                                            style: MentalHealthTextStyles
                                                .text.signikaPrimaryFontF22N,
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox.shrink()
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
    );
  }
}
