import 'option_model.dart';

class QuizModel{
  final String question;
  final List<Option>? options;
  final Option? selectedAnswer;

  QuizModel({required this.question, this.selectedAnswer,this.options});
}