import 'package:flutter/material.dart';
import 'package:soorvay/core/model/option_model.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/data/question_list.dart';
import '../../../../core/model/question_model.dart';
import '../../result/result_view.dart';

class QuestionViewModel extends BaseViewModel {
  int questionPos = 0;
  List<QuestionModel> surveyQuestions = surveyQuestionsList;
  TextEditingController typedAnswer = TextEditingController();
  Option? selectedOption;

  List<Option> option = [];

  updatePagePosition(int currentPos) {
    questionPos = currentPos ;
    notifyListeners();
  }

  previousQuestion(PageController controller) {
    if (questionPos != surveyQuestions.length -1) {
      controller.animateToPage(--questionPos,
          duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
    }
  }

  onSave(){
    if(typedAnswer.text.isNotEmpty)
    option.add(Option(answer: typedAnswer.text));
    else option.add(selectedOption!);
  }

  nextQuestion(PageController controller, BuildContext context) {
    if (questionPos < surveyQuestions.length) {
      onSave();
      controller.animateToPage(++questionPos,
          duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ResultView(result: option,)));
    }
    debugPrint('Debug print ${option[questionPos].answer}');
    debugPrint('Debug print ${typedAnswer.text}');
    typedAnswer.clear();
    option.clear();
  }

  updateSelectedAnswer({required Option option}) {
    selectedOption = option;
    notifyListeners();
  }
}
