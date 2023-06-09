import 'option_model.dart';

class QuestionModel {
  final String? questionId;
  final String question;
  final List<Option>? options;
  final Option? selectedAnswer;

  QuestionModel(
      {this.questionId,
      required this.question,
      this.selectedAnswer,
      this.options});
}

class QuestionBank {
  final String? id;
  final String? sessionId;
  final bool? isPublic;
  final bool? isPrivate;
  final String? topic;
  final QuestionModel? questionModel;
  final DateTime? dateCreated;

  QuestionBank({
    this.id,
    this.sessionId,
    this.isPublic,
    this.isPrivate,
    this.topic,
    this.questionModel,
    this.dateCreated,
  });
}

class CreatorModel{
  final String? fullName;
  final String? userId;
  final String? email;
  final Map<String,dynamic>? sessionTracker;
  final String? imageUrl;

  CreatorModel(
      {this.fullName,
      this.userId,
      this.email,
      this.sessionTracker,
      this.imageUrl,});
//  Map<String,String> sessionTracker ={
//  "time":sessionId,
//  "time":sessionId,
//  "time":sessionId,
//  }
}