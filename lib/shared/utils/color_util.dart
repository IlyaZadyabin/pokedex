import 'package:flutter/material.dart';
import 'package:pokedex/shared/config/core_styles.dart';

extension ColorExtension on Color {
  Color lighten([int percent = 10]) {
    assert(1 <= percent && percent <= 100, 'Percent must be between 1 and 100');

    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}

Color statColor({required double stat}) {
  if (stat < 20) {
    return CoreStyles.green;
  } else if (stat < 40) {
    return CoreStyles.red;
  } else if (stat < 60) {
    return CoreStyles.orange;
  } else {
    return CoreStyles.lightBlue;
  }
}
