import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color blueClr = Colors.black;
const Color yellowClr = Color(0xffffb746);
const Color pinkClr = Color(0xFFff4667);
const Color darkGrayClr = Color(0xff121212);
const Color darkHeadClr = Color(0xff424242);
const Color borderClr = Color(0xff757272); //#
const Color surfaceClr = Colors.grey;
Color onSurfaceClr = Color(0xffF8FBF8);
const primaryClr = blueClr;

class Themes {
  static final light = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryClr,
      onPrimary: onSurfaceClr,
      secondary: Colors.white,
      onSecondary: Colors.black,
      error: pinkClr,
      onError: onSurfaceClr,
      surface: surfaceClr,
      onSurface: onSurfaceClr,
    ),
  );

  static final dark = ThemeData(
      primaryColor: const Color(0xff121212), brightness: Brightness.dark);
}

TextStyle get subHeadingStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: darkHeadClr,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  ));
}

TextStyle get lableStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: darkHeadClr,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  ));
}

TextStyle get headingStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: darkGrayClr,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ));
}

TextStyle get mainheadingStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: darkGrayClr,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  ));
}

TextStyle get mainButtonStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    fontSize: 22,
    color: Colors.orange,
    fontWeight: FontWeight.bold,
  ));
}

TextStyle get appbarStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: primaryClr,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  ));
}

TextStyle get hintStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: darkHeadClr,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ));
}

TextStyle get nextButtonStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: Colors.orange,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  ));
}
