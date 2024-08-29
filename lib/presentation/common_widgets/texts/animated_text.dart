import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  final String text;

  const AnimatedText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText(
              text,

              duration: const Duration(seconds: 2),
              textStyle: TextStyle(
                  fontSize: constraints.maxWidth / 5, color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}
