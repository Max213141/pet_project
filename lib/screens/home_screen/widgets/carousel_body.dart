import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/localization/app_localizations.dart';
import 'package:life_sync/utils/utils.dart';

class CarouselBody extends StatefulWidget {
  const CarouselBody({super.key});

  @override
  State<CarouselBody> createState() => _CarouselBodyState();
}

class _CarouselBodyState extends State<CarouselBody> {
  late int _selectedIndex;
  late List<int> _list;
  @override
  void initState() {
    super.initState();
    _list = List.generate(3, (i) => i);

    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final expandedWidth = (MediaQuery.of(context).size.width - 36 - 32) / 2;
    final l10n = l10nOf(context);

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      itemBuilder: (_, index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: MentalHealthDecorations.borders.radiusC15,
          ),
          child: GestureDetector(
            onTap: () {
              if (_selectedIndex == index) {
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
                  _selectedIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                curve: Curves.linear,
                width:
                    _selectedIndex == index ? expandedWidth : expandedWidth / 2,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: MentalHealthDecorations.borders.radiusC20,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: AppColor.primaryColor,
                          ),
                          child: getImage(index),
                        ),
                      ),
                    ),
                    _selectedIndex == index
                        ? Positioned(
                            bottom: 0,
                            left: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(18),
                                ),
                                color: AppColor.secondaryBackgroundColor
                                    .withValues(alpha: .5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 1,
                                  horizontal: 8,
                                ),
                                child: getTitle(index, l10n),
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

  Widget getTitle(
    int index,
    AppLocalizations l10n,
  ) {
    switch (index) {
      case 0:
        return Text(
          l10n.homeScreenMeditation,
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22N,
        );

      case 1:
        return Text(
          l10n.homeScreenBreathingPractice,
          style: MentalHealthTextStyles.text.signikaSecondaryFontF16
              .copyWith(color: AppColor.primaryColor),
        );

      case 2:
        return Text(
          l10n.homeScreenSelfTests,
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22N,
        );

      default:
        return const Text('');
    }
  }
}
