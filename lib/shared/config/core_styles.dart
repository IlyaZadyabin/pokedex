import 'package:flutter/material.dart';

abstract class CoreStyles {
  static const Color black = Color(0xFF161A33);
  static const Color darkest = Color(0xFF000000);
  static const Color grey = Color(0xFFE8E8E8);
  static const Color darkGrey = Color(0xFF6B6B6B);
  static const Color blue = Color(0xFF3558CD);
  static const Color violet = Color(0xFFD5DEFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color green = Color(0xFF00FF00);
  static const Color red = Color(0xFFFF0000);
  static const Color lightBlue = Color(0xFF00CFFF);
  static const Color orange = Color(0xFFFF9804);

  static const TextTheme textTheme = TextTheme(
    headline3: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 48,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 32,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    button: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    overline: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  );
}
