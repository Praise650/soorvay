import 'package:flutter/material.dart';
import 'package:soorvay/core/model/question_model.dart';
import 'package:stacked/stacked.dart';

import '../../core/model/option_model.dart';
import '../views/question/view_model/question_view_model.dart';

class OptionBox extends ViewModelWidget<QuestionViewModel> {
  final String? text;
  final bool isAnswered = false;
  final QuestionModel question;

  const OptionBox({
    Key? key,
    this.text,
    required this.question
  }) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {
    Option option(index) => question.options![index];
     bool isSelected(index) => viewModel.selectedOption == question.options![index];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        viewModel.surveyQuestions[viewModel.questionPos].options!.length,
        (index) => GestureDetector(
          onTap: () {
            viewModel.updateSelectedAnswer(
              option:  viewModel
                    .surveyQuestions[viewModel.questionPos].options![index]
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: isSelected(index)
                  ? Border.all(
                      color: Colors.green,
                      style: BorderStyle.solid,
                      width: 2,
                    )
                  : Border.all(
                      color: Colors.transparent,
                      style: BorderStyle.none,
                      width: 0,
                    ),
            ),
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(option(index).answer),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          blurRadius: 1,
                          spreadRadius: 1)
                    ],
                  ),
                  child: isSelected(index)
                      ? const CircleAvatar(
                          radius: 10,
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 12,
                          ),
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
