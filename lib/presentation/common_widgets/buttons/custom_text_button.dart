import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function buttonClick;
  final String buttonText;
  final EdgeInsetsGeometry? paddings;

  const CustomTextButton(
      {super.key,
      required this.buttonClick,
      required this.buttonText,
      this.paddings});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddings ?? const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            buttonClick();
          },
          child: Text(buttonText)),
    );
  }
}
