import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planner/core/managers/theme_manager/theme_manager.dart';

class ThemeSwitchWidget extends GetView<ThemeManager> {
  const ThemeSwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Switch(
          value: controller.isDark,
          onChanged: (val) {
            controller.switchTheme();
          }),
    );
  }
}
