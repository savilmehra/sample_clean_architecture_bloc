import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextButtonWithoutBackground extends StatelessWidget {
  final Function buttonClick;
  final String buttonText;
  final EdgeInsetsGeometry? paddings;

  const TextButtonWithoutBackground(
      {super.key,
        required this.buttonClick,
        required this.buttonText,
        this.paddings});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          buttonClick();
        },
        child: Text(buttonText,style: Theme.of(context).textTheme.titleMedium,));
  }
}
