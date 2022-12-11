import 'package:flutter/material.dart';
import 'package:planner/core/theme/colors.dart';
import 'package:planner/core/theme/styles.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
    ),
    appBarTheme: AppStyles.instance.appBarThemeLight,
    textTheme: AppStyles.instance.textThemeLight,
  );

  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppStyles.instance.appBarThemeDark,
    textTheme: AppStyles.instance.textThemeDark,
  );
}
