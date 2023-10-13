import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/entities/entities.dart';
import 'package:pet_project/utils/utils.dart';

class MoodPickerWidget extends StatefulWidget {
  const MoodPickerWidget({super.key});

  @override
  State<MoodPickerWidget> createState() => _MoodPickerWidgetState();
}

class _MoodPickerWidgetState extends State<MoodPickerWidget> {
  String selectedEmotion = 'Bored';
  final List<Emotion> emotions = [
    const Emotion(
      emotionTitle: 'Angry',
      picturePath: 'assets/emotions/angry.svg',
    ),
    const Emotion(
      emotionTitle: 'Bored',
      picturePath: 'assets/emotions/bored.svg',
    ),
    const Emotion(
      emotionTitle: 'Good',
      picturePath: 'assets/emotions/good.svg',
    ),
    const Emotion(
      emotionTitle: 'Happy',
      picturePath: 'assets/emotions/happy.svg',
    ),
    const Emotion(
      emotionTitle: 'Meh',
      picturePath: 'assets/emotions/meh.svg',
    ),
    const Emotion(
      emotionTitle: 'Sad',
      picturePath: 'assets/emotions/sad.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'How are you today?',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: emotions.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 115.0,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => setState(() {
                      selectedEmotion = emotions[index].emotionTitle;
                    }),
                    child: AnimatedSize(
                      curve: Curves.easeInCirc,
                      duration: const Duration(milliseconds: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RepaintBoundary(
                            child: SizedBox(
                              height: selectedEmotion ==
                                      emotions[index].emotionTitle
                                  ? 80
                                  : 60,
                              width: selectedEmotion ==
                                      emotions[index].emotionTitle
                                  ? 80
                                  : 60,
                              child: MentalHealthSvgPicture(
                                picture: emotions[index].picturePath,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            emotions[index].emotionTitle,
                            style: MentalHealthTextStyles
                                .text.popinsSecondaryFontF14,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ActionButton(
              title: 'Submit'.toUpperCase(),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
