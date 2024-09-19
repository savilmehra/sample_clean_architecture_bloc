
import 'package:flutter/material.dart';

import '../entities/dynamic_response_conversion.dart';

class NeuFooterWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  const NeuFooterWidget(this.widgetProperty, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Image.network(widgetProperty.first.imageUrl!),
    );
  }
}
