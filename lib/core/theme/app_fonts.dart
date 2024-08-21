import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static const String defaultFontFamily = 'overpass';

  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;

  const AppFonts({
    required this.fontSize,
    required this.color,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = defaultFontFamily,
  });

  TextStyle get textStyle => GoogleFonts.getFont(
        fontFamily,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      );

  static TextStyle overpass({
    required double fontSize,
    required Color color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.overpass(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
