
import 'package:flutter/material.dart';
import 'package:login/pages/theme/colors.dart';


var lightTheme = ThemeData(
  useMaterial3: true,


  colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: backgroundColor,
      secondary: secondaryColor,
      onSecondary: backgroundColor,
      error: Colors.purple,
      onError: fontColor,
      background: backgroundColor,
      onBackground: fontColor,
      surface: backgroundColor,
      onSurface: fontColor),


  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "poppins",
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontFamily: "poppins",
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: "poppins",
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),

    bodyMedium: TextStyle(
      fontFamily: "poppins",
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontFamily: "poppins",
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: labelColor),
    labelMedium: TextStyle(
      fontFamily: "poppins",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: labelColor,
    ),
    labelSmall: TextStyle(
      fontFamily: "poppins",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: labelColor,
    ),
  ),
);
