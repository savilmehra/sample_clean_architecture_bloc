import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderTexts extends StatelessWidget {
  final String text;
final  Color? textColor;
  const HeaderTexts({super.key, required this.text,this.textColor=Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Text(
          text,
          style: TextStyle(fontSize: constraints.maxWidth / 10,color: textColor),
        );
      },
    );
  }
}
