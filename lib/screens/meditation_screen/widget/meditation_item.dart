import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/screens/tests_screen/widget/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class MeditationItem extends StatelessWidget {
  final String title;
  final String image;

  const MeditationItem({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          useSafeArea: true,
          showDragHandle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          context: context,
          builder: (context) {
            return TestItemModalSheetBody(
              title: title,
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: SizedBox(
          height: 102,
          width: MediaQuery.of(context).size.width - 32,
          child: Stack(
            children: [
              Positioned(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: MentalHealthDecorations.borders.radiusC20,
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 2.0),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ClipRRect(
                              borderRadius:
                                  MentalHealthDecorations.borders.radiusC20,
                              child: MentalHealthSvgPicture(
                                picture: image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 4),
                              child: Text(
                                title,
                                maxLines: 3,
                                style: MentalHealthTextStyles
                                    .text.signikaSecondaryFontF16,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: AppColor.primaryBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    height: 30,
                    width: 150,
                    child: Center(
                      child: Text(
                        'See more',
                        style: MentalHealthTextStyles
                            .text.popinsSecondaryFontF14
                            .copyWith(color: AppColor.primaryColor),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
