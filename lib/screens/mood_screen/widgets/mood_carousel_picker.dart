import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'mood_carousel_picker');

class MoodCarouselPicker extends StatefulWidget {
  final MoodEntry? userCurrentMood;
  final List<MoodEntry> moodEntries;
  const MoodCarouselPicker({
    super.key,
    this.userCurrentMood,
    this.moodEntries = const [],
  });

  @override
  State<MoodCarouselPicker> createState() => _MoodCarouselPickerState();
}

class _MoodCarouselPickerState extends State<MoodCarouselPicker> {
  String? selectedEmotion;
  List<MoodEntry> updatedMoodentries = [];

  @override
  void initState() {
    _log('current mood - ${widget.userCurrentMood?.mood}');
    if (widget.userCurrentMood != null) {
      setState(() {
        selectedEmotion = widget.userCurrentMood!.mood;
      });
    }
    updatedMoodentries = widget.moodEntries.toList();
    super.initState();
  }

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
    return Column(
      children: [
        CarouselSlider(
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
                    child: RepaintBoundary(
                      child: AnimatedSize(
                        curve: Curves.easeInCirc,
                        duration: const Duration(milliseconds: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: selectedEmotion == emotion.emotionTitle
                                  ? 80
                                  : 60,
                              width: selectedEmotion == emotion.emotionTitle
                                  ? 80
                                  : 60,
                              child: MentalHealthSvgPicture(
                                picture: emotion.picturePath,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              emotion.emotionTitle,
                              style: MentalHealthTextStyles
                                  .text.popinsSecondaryFontF14,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: ActionButton(
            title: l10n.submit.toUpperCase(),
            onPressed: () {
              int index = updatedMoodentries.indexWhere((element) =>
                  element.trackedDay.toDate().day == DateTime.now().day);
              if (index != -1) {
                // Replace the existing MoodEntry with the new one
                updatedMoodentries[index] = MoodEntry(
                  mood: selectedEmotion!,
                  trackedDay: Timestamp.now(),
                );
              } else {
                // Add the new MoodEntry to the list
                updatedMoodentries.add(
                  MoodEntry(
                    mood: selectedEmotion!,
                    trackedDay: Timestamp.now(),
                  ),
                );
              }
              BlocProvider.of<MoodBloc>(context).add(
                UploadUserMoodData(
                  updatedMoodTracker: updatedMoodentries,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
