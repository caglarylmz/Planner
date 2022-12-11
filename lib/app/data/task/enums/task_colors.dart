import 'package:flutter/material.dart';
import 'package:planner/core/theme/colors.dart';

enum TaskColors { red, orange, yellow, green, blue, navy, purple, pink }

extension TaskColorsValues on TaskColors {
  Color get color {
    switch (this) {
      case TaskColors.red:
        return AppColors.noteColorRed;
      case TaskColors.orange:
        return AppColors.noteColorOrange;
      case TaskColors.yellow:
        return AppColors.noteColorYellow;
      case TaskColors.green:
        return AppColors.noteColorGreen;
      case TaskColors.blue:
        return AppColors.noteColorBlue;
      case TaskColors.navy:
        return AppColors.noteColorNavy;
      case TaskColors.purple:
        return AppColors.noteColorPurple;
      case TaskColors.pink:
        return AppColors.noteColorPink;
    }
  }
}
