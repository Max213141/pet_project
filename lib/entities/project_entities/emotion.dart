enum EmotionType {
  angry,
  bored,
  good,
  happy,
  meh,
  sad,
}

class Emotion {
  final String picturePath;
  final String emotionTitle;
  final int emotionGrade;
  const Emotion({
    required this.emotionTitle,
    required this.picturePath,
    required this.emotionGrade,
  });
}
