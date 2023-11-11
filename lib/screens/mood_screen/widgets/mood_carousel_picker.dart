import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

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
        viewportFraction: .2,
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
                  curve: Curves.easeInCirc,
                  duration: const Duration(milliseconds: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RepaintBoundary(
                        child: SizedBox(
                          height:
                              selectedEmotion == emotion.emotionTitle ? 80 : 60,
                          width:
                              selectedEmotion == emotion.emotionTitle ? 80 : 60,
                          child: MentalHealthSvgPicture(
                            picture: emotion.picturePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        emotion.emotionTitle,
                        style:
                            MentalHealthTextStyles.text.popinsSecondaryFontF14,
                      )
                    ],
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
