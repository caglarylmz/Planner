import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planner/core/managers/lang_manager/lang_strings.dart';
import 'package:planner/core/managers/route_manager/app_routes.dart';
import 'package:planner/core/managers/route_manager/route_manager.dart';
import 'package:planner/core/theme/themes.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/binding.dart';
import 'package:planner/core/utils/app_scroll_behaviour.dart';

class PlannerApp extends StatelessWidget {
  const PlannerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const AppScrollBehavior(),
      title: "Task Planner",
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      defaultTransition: Transition.fade,
      translations: LangString(),
      initialRoute: AppRoutes.splash,
      initialBinding: HomeBinding(),
      getPages: RouteManager.pages,
    );
  }
}