import 'package:flutter/material.dart';

class ColorsConstant {
  static Shader linearGradient = LinearGradient(
    colors: <Color>[
      blueDark,
      blueLight,
    ],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 400.0, 70.0));

  static Color blueDark = const Color(0xFF19458c);
  static Color blueLight = const Color(0xFF24539e);
  static Color white = const Color(0xFFFFFFFF);
  static Color blackDark = const Color(0xFF1c1c1c);
  static Color blackLight = const Color(0XFF282929);
  static Color grey = const Color(0xFF92929D);
  static Color orange = const Color(0xFFFF8700);
}
