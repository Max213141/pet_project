import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_project/entities/entities.dart';
import 'package:pet_project/utils/utils.dart';

class MoodCarouselPicker extends StatefulWidget {
  const MoodCarouselPicker({super.key});

  @override
  State<MoodCarouselPicker> createState() => _MoodCarouselPickerState();
}

class _MoodCarouselPickerState extends State<MoodCarouselPicker> {
  String selectedEmotion = 'Bored';
  final List<Emotion> emotions = const [
    Emotion(
      emotionTitle: 'Angry',
      picturePath: 'assets/emotions/angry.svg',
    ),
    Emotion(
      emotionTitle: 'Bored',
      picturePath: 'assets/emotions/bored.svg',
    ),
    Emotion(
      emotionTitle: 'Good',
      picturePath: 'assets/emotions/good.svg',
    ),
    Emotion(
      emotionTitle: 'Happy',
      picturePath: 'assets/emotions/happy.svg',
    ),
    Emotion(
      emotionTitle: 'Meh',
      picturePath: 'assets/emotions/meh.svg',
    ),
    Emotion(
      emotionTitle: 'Sad',
      picturePath: 'assets/emotions/sad.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120.0,
        viewportFraction: .3,
        aspectRatio: 9 / 12,
      ),
      items: emotions.map(
        (emotion) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => setState(() {
                  selectedEmotion = emotion.emotionTitle;
                }),
                child: AnimatedSize(
                  duration: Duration(milliseconds: 200),
                  child: SizedBox(
                    height: selectedEmotion == emotion.emotionTitle ? 200 : 100,
                    width: selectedEmotion == emotion.emotionTitle
                        ? MediaQuery.of(context).size.width / 4 + 100
                        : MediaQuery.of(context).size.width / 4,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            emotion.picturePath,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            emotion.emotionTitle,
                            style: MentalHealthTextStyles
                                .text.popinsSecondaryFontF14,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
