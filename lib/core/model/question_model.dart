import 'option_model.dart';

class QuestionModel{
  final String question;
  final List<Option>? options;
  final Option? selectedAnswer;

  QuestionModel({required this.question, this.selectedAnswer,this.options});
}