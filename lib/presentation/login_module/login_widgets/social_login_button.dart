import 'package:sampleapp/presentation/ui_constant/ui_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui_constant/ui_size_constants.dart';

class SocialLoginButton extends StatelessWidget {

  final Function onCLick;
  const SocialLoginButton({super.key, required this.onCLick});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: ElevatedButton(
          onPressed: () {
            onCLick();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: UiSizeConstants.size20,
                  width: UiSizeConstants.size20,
                  child: Image.asset("assets/icons/google_icon.webp")),
              const Text(UiConstants.loginWithGoogle)
            ],
          )),
    );
  }
}
