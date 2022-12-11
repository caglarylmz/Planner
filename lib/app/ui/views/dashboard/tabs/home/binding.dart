import 'package:get/get.dart';
import 'package:planner/app/data/task/repositories/task_repositories.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => TaskRepository());
    Get.lazyPut(() => HomeController());
  }


}