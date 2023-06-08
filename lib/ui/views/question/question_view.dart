import 'package:flutter/material.dart';
import 'package:soorvay/ui/widgets/exit_dialog.dart';
import 'package:soorvay/ui/widgets/general_input.dart';

import 'package:stacked/stacked.dart';
import '../../styles/dimens.dart';
import '../../widgets/buttons/base_button.dart';
import '../../widgets/option_box.dart';
import '../../widgets/question_widget.dart';
import 'view_model/question_view_model.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({Key? key}) : super(key: key);

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  PageController? controller;

  @override
  initState() {
    super.initState();
    controller = PageController(
      initialPage: 0,
      keepPage: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QuestionViewModel>.reactive(
        viewModelBuilder: () => QuestionViewModel(),
        builder: (context, model, _) {
          return WillPopScope(
            onWillPop: () async {
              if (model.questionPos != 0) {
                return await model.previousQuestion(controller!);
              } else if (model.questionPos == 0) {
                return await showDialog(
                      context: context,
                      builder: (context) => const ExitDialog(),
                    ) ??
                    false;
              }
              return false;
            },
            child: SafeArea(
              child: Scaffold(
                body: Container(
                  padding: Dimens.screenPadding,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.deepPurple],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: model.questionPos == 0
                                ? Colors.grey
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton.icon(
                          onPressed: () => model.previousQuestion(controller!),
                          icon: const Icon(
                            Icons.chevron_left,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Previous',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: PageView.builder(
                          onPageChanged: (page) =>
                              model.updatePagePosition(page),
                          itemCount: model.surveyQuestions.length,
                          controller: controller,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                QuestionWidget(
                                  currentQuestion: model.questionPos,
                                  totalQuestion: model.surveyQuestions.length,
                                  question:
                                      model.surveyQuestions[index].question,
                                ),
                                model.surveyQuestions[index].options != null
                                    ? OptionBox(
                                        question: model.surveyQuestions[index],
                                      )
                                    : GeneralInput(
                                        textResult: model.typedAnswer,
                                      ),
                              ],
                            );
                          },
                        ),
                      ),
                      BaseButton(
                        bgColor: Colors.white,
                        onPress: () => model.nextQuestion(
                          controller!,
                          context,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

// Future<bool> onWillPop(BuildContext context, {required QuestionScreenViewModel model, required PageController controller,}) async {
//    return (await (model.previousQuestion(controller)) Navigator.pop(context);) ??
//       false;
// }
