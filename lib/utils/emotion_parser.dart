String getEmotionTitle(int emotionGrade) {
  String emotion;
  switch (emotionGrade) {
    case 1:
      emotion = 'Angry';
      break;
    case 2:
      emotion = 'Sad';
      break;
    case 3:
      emotion = 'Bored';
      break;
    case 4:
      emotion = 'Meh';
      break;
    case 5:
      emotion = 'Good';
      break;
    case 6:
      emotion = 'Happy';
      break;
    default:
      emotion = 'Good';
      break;
  }
  return emotion;
}
