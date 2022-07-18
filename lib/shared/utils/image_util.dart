import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

// Calculate dominant color from image url
Future<Color> getImagePalette(String url) async {
  if (Platform.environment.containsKey('FLUTTER_TEST')) {
    // since flutter test breaks during accessing file system
    return Colors.transparent;
  }
  final paletteGenerator =
      await PaletteGenerator.fromImageProvider(CachedNetworkImageProvider(url));
  return paletteGenerator.dominantColor?.color ?? Colors.transparent;
}
