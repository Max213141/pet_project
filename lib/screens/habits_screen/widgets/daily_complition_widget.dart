import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_project/utils/utils.dart';

class HorizontalDateList extends StatelessWidget {
  const HorizontalDateList({super.key});

  // Function to generate a list of dates starting from the current date
  List<DateTime> generateDates(int count) {
    List<DateTime> dates = [];
    DateTime currentDate = DateTime.now();

    for (int i = 0; i < count; i++) {
      dates.add(currentDate.add(Duration(days: i)));
    }

    return dates;
  }

  @override
  Widget build(BuildContext context) {
    int itemCount = 30; // Number of dates to display
    List<DateTime> dates = generateDates(itemCount);

    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width - 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            String formattedMonth =
                DateFormat('MMM').format(dates[index]).toUpperCase();
            String formattedDate =
                DateFormat('dd').format(dates[index]).toUpperCase();
            return SizedBox(
              height: 100,
              width: 55,
              child: Stack(children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: SizedBox(
                      width: 47,
                      height: 400 / 7,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColor.primaryBackgroundColor,
                          borderRadius:
                              MentalHealthDecorations.borders.radiusC15,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: SizedBox(
                    width: 55.0, // Adjust the width as needed
                    height: 100,
                    // margin: EdgeInsets.all(8.0),
                    // padding: EdgeInsets.all(16.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                AppColor.habbitsTileBackground.withOpacity(.9),
                            width: 2,
                          ),
                          borderRadius:
                              MentalHealthDecorations.borders.radiusC15,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  formattedDate,
                                  style: MentalHealthTextStyles
                                      .text.signikaFontF24,
                                ),
                              ),
                              Center(
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    formattedMonth,
                                    style: MentalHealthTextStyles
                                        .text.signikaFontF24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}
