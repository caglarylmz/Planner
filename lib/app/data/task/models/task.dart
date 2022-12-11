import 'dart:developer';

import 'package:planner/app/data/task/enums/task_colors.dart';

class Task {
  int? id;
  String? title;
  String? note;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  TaskColors? color;
  int? remind;
  String? repeat;

  Task(
      {this.id,
      this.title,
      this.note,
      this.isCompleted,
      this.date,
      this.startTime,
      this.endTime,
      this.color,
      this.remind,
      this.repeat});

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    note = json['note'];
    isCompleted = json['isCompleted'];
    date = json['date'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    color = TaskColors.values.elementAt(json['color']);
    remind = json['remind'];
    repeat = json['repeat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['note'] = note;
    data['isCompleted'] = isCompleted;
    data['date'] = date;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['color'] = color?.index;
    data['remind'] = remind;
    data['repeat'] = repeat;
    return data;
  }

  @override
  String toString() {
    return """
    "id":$id,
    "title":$title,
    "note":$note,
    "isCompleted":$isCompleted,
    "date":$date,
    "startTime":$startTime,
    "endTime":$endTime
    "color":$color,
    "remind":$remind,
    "repeat":$repeat
    """;
  }
}
