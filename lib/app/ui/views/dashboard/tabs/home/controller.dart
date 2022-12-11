import 'package:get/get.dart';
import 'package:planner/app/data/task/models/task.dart';
import 'package:planner/app/data/task/repositories/task_repositories.dart';

class HomeController extends GetxController {
  final TaskRepository taskRepository = Get.find();

  final _selectedDate = DateTime.now().obs;

  final _tasks = <Task>[].obs;

  List<Task> get tasks => _tasks;
  final tasksOnDate = <Task>[].obs;
  final tasksDaily = <Task>[].obs;

  setSelectedDate(DateTime dateTime) => _selectedDate.value = dateTime;

  DateTime get selectedDate => _selectedDate.value;

  @override
  void onInit() async {
    super.onInit();
    await getAllTasks();
  }

  Future getAllTasks() async {
    _tasks.value = await taskRepository.getTasks();
  }

  Future addTask(Task task) async {
    await taskRepository.addTask(task: task);
    await getAllTasks();
  }

  Future deleteTask(Task task) async {
    await taskRepository.deleteTask(task);
    await getAllTasks();
  }

  Future updateTask(Task task) async {
    await taskRepository.updateTask(task);
    await getAllTasks();
  }
}
