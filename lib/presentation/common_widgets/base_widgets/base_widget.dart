import 'package:flutter/cupertino.dart';

import '../clippers/clipper_background.dart';

class BaseWidget extends StatelessWidget with GetBackgroundClipper {
  final Widget child;
  final Color color1;
  final Color color2;

  BaseWidget(
      {super.key,
      required this.color1,
      required this.color2,
      required this.child})
      : colorBase = color1,
        mainColor = color2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [getBackground(), child],
    );
  }

  @override
  Color colorBase;

  @override
  Color mainColor;
}

mixin GetBackgroundClipper {
  abstract Color colorBase;
  abstract Color mainColor;

  Widget getBackground() {
    return ClipperBackground(
      gradientColors: [colorBase, mainColor],
    );
  }
}
