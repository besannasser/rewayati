import 'package:riwayat/models/questions.dart';

class SubQuestions extends Questions {
  SubQuestions(
      {String question,
      String answer1,
      String answer2,
      String answer3,
      String answer4,
      String correctAnswer})
      : super(question, answer1, answer2, answer3, answer4, correctAnswer);
}
