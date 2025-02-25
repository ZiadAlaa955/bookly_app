import 'package:bookly_app/Core/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appThemeData() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kPrimaryColor,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.dark().textTheme,
    ),
  );
}
