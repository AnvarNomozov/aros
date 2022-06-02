import 'package:flutter/material.dart';

class ColorConst {
  /* @@@@@@@@@@@@@ COLORS @@@@@@@@@@@@@@ */
  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color greenPirimary = Color(0xFF1FBA4A);
  static Color blue = Colors.blue;

  /* $$$$$$$$$$$$ STYLES $$$$$$$$$$$$ */
  static TextStyle bold25({Color color = Colors.black, double size = 25}) =>
      TextStyle(fontSize: size, color: color);
}