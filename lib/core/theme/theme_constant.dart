import 'package:flutter/material.dart';
import 'package:nontonin/core/theme/colors.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'BebasNeue',
  brightness: Brightness.dark,
  primaryColor: ColorsConstant.blueLight,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 55,
      foreground: Paint()..shader = ColorsConstant.linearGradient,
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: ColorsConstant.blueLight,
);

TextTheme textThemehemeContext(BuildContext context) {
  return Theme.of(context).textTheme;
}
