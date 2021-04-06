import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ThemeVersionFonts {
  static final TextTheme textTheme = GoogleFonts.nunitoTextTheme();

  static final title = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final normal = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
}
