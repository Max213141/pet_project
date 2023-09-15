import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/entities/entities.dart';
import 'package:pet_project/utils/utils.dart';

class MoodPickerWidget extends StatelessWidget {
  final List<Emotion> emotions = [
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
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'How are you today?',
              style: MentalHealthTextStyles.text.signikaQuoteFontF24,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: emotions.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 110.0,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        emotions[index].picturePath,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        emotions[index].emotionTitle,
                        style:
                            MentalHealthTextStyles.text.popinsSecondaryFontF14,
                      )
                    ],
                  );
                },
              ),
            ),
            ActionButton(),
          ],
        ),
      ),
    );
  }
}
