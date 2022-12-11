import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/core/theme/colors.dart';

class AppStyles {
  static AppStyles? _instance;

  AppStyles._();

  static AppStyles get instance => _instance ??= AppStyles._();

  TextTheme get textThemeLight => TextTheme(
        headlineSmall: _headlineSmallLight,
        headlineMedium: _headlineMediumLight,
        titleLarge: _headTitle,
        titleMedium: _title,
        titleSmall: _subtitleLight,
      );

  TextTheme get textThemeDark => TextTheme(
        headlineSmall: _headlineSmallDark,
        headlineMedium: _headlineMediumDark,
        titleLarge: _headTitle,
        titleMedium: _title,
        titleSmall: _subtitleDark,
      );

  AppBarTheme get appBarThemeLight => const AppBarTheme(
        elevation: 0,
        //color: AppColors.primaryBoldColor,
        //foregroundColor: AppColors.lightTextColor,
      );

  AppBarTheme get appBarThemeDark => const AppBarTheme(
        elevation: 0,
        color: AppColors.primaryColor,
        //foregroundColor: AppColors.lightTextColor,
      );

  final _headlineMediumLight = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );

  final _headlineMediumDark = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  final _headlineSmallLight = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
  );
  final _headlineSmallDark = GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.grey[400],
    ),
  );

  final _headTitle = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
    ),
  );
  final _title = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );
  final _subtitleLight = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
    ),
  );
  final _subtitleDark = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white70,
    ),
  );
}
