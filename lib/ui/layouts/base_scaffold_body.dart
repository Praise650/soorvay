import 'package:flutter/material.dart';

import '../styles/dimens.dart';

class BaseScaffoldBody extends StatefulWidget {
  final Widget child;
  const BaseScaffoldBody({Key? key, required this.child}) : super(key: key);

  @override
  State<BaseScaffoldBody> createState() => _BaseScaffoldBodyState();
}

class _BaseScaffoldBodyState extends State<BaseScaffoldBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.screenPadding,
      child: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: widget.child,
          );
        },
      ),
    );
  }
}
