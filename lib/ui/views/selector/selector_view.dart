import 'package:flutter/material.dart';
import 'package:soorvay/ui/views/question/question_view.dart';

class SelectorView extends StatelessWidget {
  const SelectorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurple],
          ),
        ),
        alignment: Alignment.center,
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          children: <String>[
            "Create Questions",
            "Create Session",
            "Join Session",
            "General Questions"
          ]
              .map((e) => Card(
                    color: Colors.white,
                    elevation: 0.5,
                    margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuestionView(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          e.toUpperCase(),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
