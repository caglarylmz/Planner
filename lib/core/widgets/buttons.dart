import 'package:flutter/material.dart';
import 'package:planner/core/theme/colors.dart';
import 'package:get/get.dart';

class AppButtons {
  static AppButtons? _instance;

  AppButtons._();

  static AppButtons get instance => _instance ??= AppButtons._();

  Widget primaryButton(
          {required String label,
          required Function() onTap,
          bool isLarge = false,
          bool isSuccess = false,
          bool isError = false}) =>
      Padding(
        padding: isLarge
            ? const EdgeInsets.symmetric(horizontal: 20.0)
            : const EdgeInsets.symmetric(horizontal: 0.0),
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            backgroundColor: isSuccess
                ? AppColors.successColor
                : isError
                    ? AppColors.errorColor
                    : AppColors.primaryColor,
            foregroundColor: AppColors.lightTextColor,
            shape: const StadiumBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: isLarge ? Get.width : 100,
              child: Center(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      );

  Widget secondaryButton(
          {required String label,
          required Function() onTap,
          bool isLarge = false}) =>
      Padding(
        padding: isLarge
            ? const EdgeInsets.symmetric(horizontal: 20.0)
            : const EdgeInsets.symmetric(horizontal: 0.0),
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(color: AppColors.primaryColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: isLarge ? Get.width : 100,
              child: Center(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      );

  Widget defaultButton(
          {required String label,
          required Function() onTap,
          bool isLarge = false}) =>
      Padding(
        padding: isLarge
            ? const EdgeInsets.symmetric(horizontal: 20.0)
            : const EdgeInsets.symmetric(horizontal: 0.0),
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(
              color: Get.isDarkMode
                  ? AppColors.lightGreyColor
                  : AppColors.darkGreyColor,
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: isLarge ? Get.width : 100,
              child: Center(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Get.isDarkMode
                          ? AppColors.lightTextColor
                          : AppColors.darkTextColor),
                ),
              ),
            ),
          ),
        ),
      );
}
