import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class KhanooText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const KhanooText(this.text, this.fontSize, this.fontWeight, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text.tr,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
