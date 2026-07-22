import 'package:flutter/material.dart';
import 'package:jibme/app/consts/colors.dart';

class AppTheme {

  static final ThemeData mainTheme = ThemeData(
    brightness: .dark,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.darkNavyScaffoldBackground,
    textTheme: const TextTheme(
      // Headlines
      headlineLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),


      // Titles
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),


      // Body
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),


      // Labels
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      

    ),
  );


}