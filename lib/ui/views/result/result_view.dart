import 'package:flutter/material.dart';
import 'package:soorvay/ui/styles/dimens.dart';
import 'package:soorvay/ui/views/selector/selector_view.dart';

import '../../../core/model/option_model.dart';
import '../../widgets/buttons/base_button.dart';

class ResultView extends StatelessWidget {
  const ResultView({Key? key, required this.result}) : super(key: key);
  final List<Option> result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Dimens.screenPadding,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.deepPurple],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // for(int i =0; i<=result.length; i++)
              //   Text("$i: ${result[i]}"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: result.map(
                      (e) => Text(
                        "$e: ${e.answer}",
                        style: const TextStyle(fontSize: 14),
                      ),
                    )
                    .toList(),
              ),
              BaseButton(
                  bgColor: Colors.white,
                  onPress: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectorView(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
