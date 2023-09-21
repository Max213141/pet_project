import 'package:flutter/material.dart';
import 'package:pet_project/utils/utils.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 2 -
          16 -
          12, // screen/2 - outer padding - inner padding
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: MentalHealthDecorations.borders.radiusC20,
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 22),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 125,
                    width: 125,
                    child: ClipRRect(
                      borderRadius: MentalHealthDecorations.borders.radiusC20,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/lotus.jpg'),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: SizedBox(
                      width: 35,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5, left: 5),
                        child: Center(
                          child: Icon(
                            Icons.heart_broken_rounded,
                            color: Color(0xFFFF8B72),
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lotus',
                      style:
                          MentalHealthTextStyles.text.signikaSecondaryFontF16,
                    ),
                    Text(
                      '5 min',
                      style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Expanded(
                child: ScrollConfiguration(
                  behavior: CustomBehavior(),
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.primaryBackgroundColor,
                          ),
                          borderRadius:
                              MentalHealthDecorations.borders.radiusC10,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            child: Text(
                              'Tag',
                              style: MentalHealthTextStyles
                                  .text.popinsSecondaryFontF12,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
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
