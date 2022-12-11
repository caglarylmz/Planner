import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:planner/app.dart';
import 'package:planner/core/managers/db_manager/tasks_db_manager.dart';
import 'package:planner/core/managers/notification_manager/local_notification_manager.dart';
import 'package:planner/core/managers/theme_manager/theme_manager.dart';
import 'package:planner/app/data/task/repositories/task_repositories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  TaskDbManager.instance.init();
  Get.put(LocalNotificationManager());
  Get.put(ThemeManager(), permanent: true);
  Get.put(TaskRepository(),permanent: true);

  runApp(const PlannerApp());
}


