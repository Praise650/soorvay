import 'package:flutter/material.dart';
import 'package:soorvay/ui/views/create_question/view_model/create_question_view_model.dart';
import 'package:stacked/stacked.dart';

import '../../styles/deorations.dart';

class CreateQuestionsView extends StatefulWidget {
  const CreateQuestionsView({Key? key}) : super(key: key);

  @override
  State<CreateQuestionsView> createState() => _CreateQuestionsViewState();
}

class _CreateQuestionsViewState extends State<CreateQuestionsView> {
  List<_CreateQuestionWidget> addQuestionWidget = [];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateQuestionViewModel>.reactive(
      viewModelBuilder: () => CreateQuestionViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              decoration: appBgDecoration,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Create Questions"),
                    const SizedBox(height: 10),
                    const _Header(title: "Add Subject"),
                    const _Header(title: "Add Topic"),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Column(
                            children: addQuestionWidget,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => setState(
                                () => addQuestionWidget.add(
                                  _CreateQuestionWidget(
                                    controller: model.question,
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Add Question",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  final TextEditingController? controller;
  final String? title;

  const _Header({super.key, this.title, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!.toUpperCase(),
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _CreateQuestionWidget extends StatefulWidget {
  final TextEditingController? controller;
  final TextEditingController? optionController;

  const _CreateQuestionWidget(
      {super.key, this.controller, this.optionController});

  @override
  State<_CreateQuestionWidget> createState() => _CreateQuestionWidgetState();
}

class _CreateQuestionWidgetState extends State<_CreateQuestionWidget> {
  List<Widget> optionWidget = [];
  Widget addOption() => Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.5,
            style: BorderStyle.solid,
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Create Question",
          style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),),
        const SizedBox(height: 5),
        TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 0.5,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Create Options",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
              const SizedBox(height: 2),
              Column(
                children: optionWidget,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () => setState(
              () => optionWidget.add(
                addOption(),
              ),
            ),
            child: const Text("Add Option",style: TextStyle(color: Colors.white),),
          ),
        )
      ],
    );
  }
}
