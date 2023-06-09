import 'package:flutter/cupertino.dart';
import 'package:soorvay/core/model/option_model.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/model/question_model.dart';

class CreateQuestionViewModel extends BaseViewModel{
  List<QuestionModel> storeQuestions = [];
  List<Option> storeOptions =[];
  TextEditingController question = TextEditingController();
  TextEditingController correctAnswer = TextEditingController();
  TextEditingController option = TextEditingController();

  addNewQuestion(){
    QuestionModel createQuestion = QuestionModel(question: question.text,
    options: getOption()??null,
    );
    storeQuestions.add(createQuestion);
  }
  List<Option>? getOption(){
    List<Option>? options;
    options!.add(Option(answer: option.text));
    return options;
  }

}