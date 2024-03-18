import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

// _log(dynamic message) => Logger.projectLog(message, name: 'mood_picker_widget');

class MoodPickerWidget extends StatefulWidget {
  final DateTime selectedDay;
  final List<MoodEntry> moodEntries;

  const MoodPickerWidget({
    super.key,
    required this.selectedDay,
    required this.moodEntries,
  });

  @override
  State<MoodPickerWidget> createState() => _MoodPickerWidgetState();
}

class _MoodPickerWidgetState extends State<MoodPickerWidget> {
  late List<MoodEntry> updatedMoodentries = [];

  @override
  void initState() {
    super.initState();
    updatedMoodentries = widget.moodEntries.toList();
  }

  int selectedEmotion = 5;

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final List<Emotion> emotions = [
      Emotion(
        emotionTitle: l10n.emotionHappy,
        picturePath: 'assets/emotions/happy.svg',
        emotionGrade: 6,
      ),
      Emotion(
        emotionTitle: l10n.emotionGood,
        picturePath: 'assets/emotions/good.svg',
        emotionGrade: 5,
      ),
      Emotion(
        emotionTitle: l10n.emotionMeh,
        picturePath: 'assets/emotions/meh.svg',
        emotionGrade: 4,
      ),
      Emotion(
        emotionTitle: l10n.emotionBored,
        picturePath: 'assets/emotions/bored.svg',
        emotionGrade: 3,
      ),
      Emotion(
        emotionTitle: l10n.emotionSad,
        picturePath: 'assets/emotions/sad.svg',
        emotionGrade: 2,
      ),
      Emotion(
        emotionTitle: l10n.emotionAngry,
        picturePath: 'assets/emotions/angry.svg',
        emotionGrade: 1,
      ),
    ];

    return RepaintBoundary(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.howAreYou,
                style: MentalHealthTextStyles.text.signikaFontF24,
              ),
              Expanded(
                child: Center(
                  child: GridView.builder(
                    itemCount: emotions.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 115.0,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => setState(() {
                          selectedEmotion = emotions[index].emotionGrade;
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
              ),
              ActionButton(
                title: l10n.submit.toUpperCase(),
                onPressed: () {
                  final emotionTitle = getEmotionTitle(selectedEmotion);
                  int index = updatedMoodentries.indexWhere((element) {
                    final trackedDay = element.trackedDay.toDate();
                    return trackedDay.day == widget.selectedDay.day &&
                        trackedDay.month == widget.selectedDay.month;
                  });
                  if (index != -1) {
                    // Replace the existing MoodEntry with the new one
                    updatedMoodentries[index] = MoodEntry(
                      mood: emotionTitle,
                      trackedDay: Timestamp.fromDate(widget.selectedDay),
                    );
                  } else {
                    // Add the new MoodEntry to the list
                    updatedMoodentries.add(
                      MoodEntry(
                        mood: emotionTitle,
                        trackedDay: Timestamp.fromDate(widget.selectedDay),
                      ),
                    );
                    // _log('after changes ${updatedMoodentries[index]}');
                  }

                  BlocProvider.of<MoodBloc>(context).add(
                    UploadUserMoodData(
                      updatedMoodTracker: updatedMoodentries,
                    ),
                  );
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
