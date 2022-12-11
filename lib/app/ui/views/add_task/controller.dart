import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:planner/app/data/task/enums/task_colors.dart';
import 'package:planner/app/data/task/models/task.dart';
import 'package:planner/app/data/task/repositories/task_repositories.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/controller.dart';

class AddTaskController extends GetxController {
  final TaskRepository taskRepository = Get.find();
  final HomeController homeViewModel = Get.find();
  List<int> remindList = [5, 15, 30, 60, 120];
  List<String> repeatList = ["None", "Daily", "Weekly", "Monthly", "Yearly"];

  final Rx<TaskColors> _selectedColor = TaskColors.red.obs;

  TaskColors get selectedColor => _selectedColor.value;

  setSelectedColor(TaskColors color) => _selectedColor.value = color;

  final Rx<TextEditingController> _titleController =
      TextEditingController().obs;

  TextEditingController get titleController => _titleController.value;

  final Rx<TextEditingController> _noteController = TextEditingController().obs;

  TextEditingController get noteController => _noteController.value;

  final Rx<DateTime> _selectedDate = DateTime.now().obs;

  DateTime get selectedDate => _selectedDate.value;

  setSelectedDate(DateTime pickedDate) => _selectedDate.value = pickedDate;

  final _startTime = DateFormat("hh:mm a")
      .format(DateTime.now().add(const Duration(hours: 1)))
      .toString()
      .obs;

  String get startTime => _startTime.value;

  setStartTime(String time) => _startTime.value = time;

  final _endTime = DateFormat("hh:mm a")
      .format(DateTime.now().add(const Duration(hours: 2)))
      .toString()
      .obs;

  String get endTime => _endTime.value;

  setEndTime(String time) => _endTime.value = time;

  final _selectedRemind = 5.obs;

  int get selectedRemind => _selectedRemind.value;

  setSelectedRemind(int value) => _selectedRemind.value = value;

  final _selectedRepeat = "None".obs;

  String get selectedRepeat => _selectedRepeat.value;

  setSelectedRepeat(String value) => _selectedRepeat.value = value;

  validateDate() {
    if (titleController.text.isNotEmpty && noteController.text.isNotEmpty) {
      _addTask();
      Get.back();
    } else if (titleController.text.isEmpty || noteController.text.isEmpty) {
      Get.snackbar("Required", "All fields are required!",
          snackPosition: SnackPosition.TOP, icon: const Icon(Icons.warning));
    }
  }

  _addTask() async {
    await taskRepository.addTask(
      task: Task(
          title: titleController.text,
          note: noteController.text,
          date: DateFormat.yMd().format(selectedDate),
          startTime: startTime,
          endTime: endTime,
          remind: selectedRemind,
          repeat: selectedRepeat,
          color: selectedColor,
          isCompleted: 0),
    );
    await homeViewModel.getAllTasks();
  }

  getDateFromUser({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 10),
      lastDate: DateTime(DateTime.now().year + 10),
    );
    if (pickedDate != null) {
      _selectedDate.value = pickedDate;
    }
  }

  getTimeFromUser(
      {required BuildContext context, required bool isStartTime}) async {
    var time = isStartTime ? startTime : endTime;
    TimeOfDay? pickedTime = await _getTimeFromTimePicker(context, time);
    if (pickedTime != null) {
      String formattedTime = pickedTime.format(context);
      if (isStartTime) {
        _startTime.value = formattedTime;
      } else {
        _endTime.value = formattedTime;
      }
    }
  }

  _getTimeFromTimePicker(BuildContext context, String time) async {
    int hour = int.parse(startTime.split(":")[0]);
    int convertedHour = 0;
    int convertedMinute = int.parse(startTime.split(":")[1].split(" ")[0]);
    String m = startTime.split(" ")[1];

    if (m == "PM") {
      switch (hour) {
        case 1:
          convertedHour = 13;
          break;
        case 2:
          convertedHour = 14;
          break;
        case 3:
          convertedHour = 15;
          break;
        case 4:
          convertedHour = 16;
          break;
        case 5:
          convertedHour = 17;
          break;
        case 6:
          convertedHour = 18;
          break;
        case 7:
          convertedHour = 19;
          break;
        case 8:
          convertedHour = 20;
          break;
        case 9:
          convertedHour = 21;
          break;
        case 10:
          convertedHour = 22;
          break;
        case 11:
          convertedHour = 23;
          break;
      }
    } else {
      convertedHour = hour;
    }
    return showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: convertedHour, minute: convertedMinute),
    );
  }
}
