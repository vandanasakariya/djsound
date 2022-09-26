import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final List? shadows;
  const AppText({
    Key? key,
    this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.shadows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        // shadows: shadows,
      ),
    );
  }
}
