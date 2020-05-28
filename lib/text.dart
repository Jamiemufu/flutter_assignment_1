import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final textToChange;

  CustomText(this.textToChange);

  Widget build(BuildContext context) {
    return 
      Text(textToChange, textAlign: TextAlign.center);
  }
}