
import 'package:get/get.dart';
import 'package:planner/core/managers/db_manager/tasks_db_manager.dart';
import 'package:planner/app/data/task/models/task.dart';

class TaskRepository extends GetxService {
  final taskDbManager = TaskDbManager.instance;



  Future<void> addTask({required Task task}) async {
    await taskDbManager.add(task);
  }

  Future<List<Task>> getTasks() async {
    return await taskDbManager.getAll();
  }

  Future getTask(Task t) async {
    return await taskDbManager.getById(t);
  }

  Future deleteTask(Task task) async {
    return taskDbManager.delete(task);
  }

  Future updateTask(Task task) async {
    Task updatedTask = Task(
        id: task.id,
        title: task.title,
        note: task.title,
        date: task.date,
        startTime: task.startTime,
        endTime: task.endTime,
        remind: task.remind,
        repeat: task.repeat,
        color: task.color,
        isCompleted: 1);
    return await taskDbManager.update(updatedTask);
  }
}
