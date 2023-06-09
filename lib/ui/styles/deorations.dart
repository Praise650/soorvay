import 'package:flutter/material.dart';

BoxDecoration appBgDecoration = const BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.blue, Colors.deepPurple],
  ),
);

BoxDecoration questionBorderDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(5),
  border: Border.all(
    color: Colors.white,
    style: BorderStyle.solid,
    width: 1,
  ),
) ;
