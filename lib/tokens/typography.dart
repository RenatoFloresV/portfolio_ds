import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DsTypography {
  DsTypography._();

  static String get fontFamily => 'noto-sans';

  static TextTheme fontTextTheme(TextTheme? textTheme) =>
      GoogleFonts.interTextTheme(textTheme);
}
