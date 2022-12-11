import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planner/core/managers/theme_manager/theme_manager.dart';


AppBar appBar({bool isBackable = false, String? title}) {
  ThemeManager themeManager = Get.find();

  return AppBar(
    title: Text(title ?? ""),
    leading: isBackable
        ? GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
          )
        : GestureDetector(
            onTap: () {
              themeManager.switchTheme();
            },
            child: Obx(
              () => themeManager.isDark
                  ? const Icon(
                      Icons.sunny,
                      size: 20,
                    )
                  : const Icon(
                      Icons.nightlight_round,
                      size: 20,
                    ),
            ),
          ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.account_circle,
          size: 40,
        ),
      ),
    ],
  );
}

/*
AppBar appBar() {
  ThemeService themeService = Get.find();
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        themeService.switchTheme();
      },
      child: Obx(
        () => themeService.isDark
            ? const Icon(
                Icons.sunny,
                size: 20,
              )
            : const Icon(
                Icons.nightlight_round,
                size: 20,
              ),
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.account_circle,
          size: 40,
        ),
      ),
    ],
  );
}
*/
