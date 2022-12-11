import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:planner/core/managers/notification_manager/local_notification_manager.dart';

import 'package:planner/core/utils/storage_key.dart';

class ThemeManager extends GetxService {
  final _storage = GetStorage();
  LocalNotificationManager notificationManager = Get.find();

  final _isDark = false.obs;

  bool get isDark => _isDark.value;


  @override
  void onInit() {
    super.onInit();
    _isDark.value = _loadThemeFromStorage();
    Get.changeThemeMode(_isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  void switchTheme() {
    _isDark.value = !_isDark.value;
    Get.changeThemeMode(_isDark.value ? ThemeMode.dark : ThemeMode.light);

    _saveThemeToStorage();
    notificationManager.displayNotification(
        title: "Theme Changed",
        body: isDark
            ? "Dark Mode is activated"
            : "Light Mode is activated");
    //notificationService.scheduledNotification();
  }

  bool _loadThemeFromStorage() => _storage.read(StorageKeys.themeKey) ?? false;

  _saveThemeToStorage() => _storage.write(StorageKeys.themeKey, _isDark.value);
}
