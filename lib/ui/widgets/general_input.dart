import 'package:flutter/material.dart';

class GeneralInput extends StatefulWidget {
  GeneralInput({Key? key, required this.textResult}) : super(key: key);

  TextEditingController textResult;

  @override
  State<GeneralInput> createState() => _GeneralInputState();
}

class _GeneralInputState extends State<GeneralInput> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: widget.textResult,
        decoration: const InputDecoration(
          hintText: 'Type your answer here',
          hintStyle: TextStyle(
            color: Colors.blue,
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: 'Type your answer here',
          labelStyle: TextStyle(
            color: Colors.blue,
          ),
        ),
        onChanged: (value) => setState(
                () => widget.textResult.text = value),
        // onEditingComplete: () {},
      ),
    );
  }
}
