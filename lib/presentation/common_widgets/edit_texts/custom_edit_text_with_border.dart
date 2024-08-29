import 'package:flutter/material.dart';

import '../../../utils/text_validaters/TextValidators.dart';

class CustomEditTextWithBorder extends StatelessWidget {
  final String levelText;
  final EdgeInsetsGeometry? paddings;
  final TextValidators? textValidators;
  final String? validateErrorText;
  final TextEditingController? textEditingController;
  final bool isPassword;

  const CustomEditTextWithBorder(
      {super.key,
      required this.levelText,
      this.paddings,
      this.isPassword = false,
      this.textValidators,
      this.validateErrorText,
      this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: paddings ?? const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: textEditingController ?? TextEditingController(),
          validator: (input) => textValidators == null
              ? null
              : textValidators!.validate(input ?? "")
                  ? null
                  : validateErrorText ?? "",
          obscureText: isPassword,
          decoration: InputDecoration(
            label: Text(levelText),
            filled: true,
            fillColor: Colors.white,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.0),
            ),
          ),
        ));
  }
}
