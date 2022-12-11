import 'package:get/get.dart';
import 'package:planner/app/ui/views/main/splash/view.dart';
import 'package:planner/core/managers/route_manager/app_routes.dart';
import 'package:planner/app/ui/views/add_task/binding.dart';
import 'package:planner/app/ui/views/add_task/view.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/binding.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/view.dart';

class RouteManager{
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () =>  const SplashView(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.addTask,
      page: () => const AddTaskView(),
      binding: AddTaskBinding(),
    ),
  ];
}