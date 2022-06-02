import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight? fontWeight;
  Color? color;
  TextDecoration? textDecoration;
  TextWidget(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.fontWeight,
      this.textDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
    );
  }
}
