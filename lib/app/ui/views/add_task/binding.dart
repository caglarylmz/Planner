import 'package:get/get.dart';
import 'package:planner/app/data/task/repositories/task_repositories.dart';
import 'package:planner/app/ui/views/add_task/controller.dart';

class AddTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskRepository());
    Get.lazyPut(() => AddTaskController());
  }
}
