import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

class HabitCreationBody extends StatefulWidget {
  const HabitCreationBody({
    super.key,
  });

  @override
  State<HabitCreationBody> createState() => _HabitCreationBodyState();
}

class _HabitCreationBodyState extends State<HabitCreationBody> {
  late List<MoodEntry> updatedMoodentries = [];

  @override
  void initState() {
    super.initState();
  }

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
    return RepaintBoundary(
      child: SizedBox(
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
                  int index = updatedMoodentries.indexWhere((element) =>
                      element.trackedDay.toDate().day == DateTime.now().day);
                  if (index != -1) {
                    // Replace the existing MoodEntry with the new one
                  } else {
                    // Add the new MoodEntry to the list
                    // updatedMoodentries.add(
                    //   MoodEntry(
                    //     mood: selectedEmotion,
                    //     trackedDay: Timestamp.fromDate(widget.selectedDay),
                    //   ),
                    // );
                  }
                  BlocProvider.of<MoodBloc>(context).add(
                    UploadUserMoodData(
                      updatedMoodTracker: updatedMoodentries,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
