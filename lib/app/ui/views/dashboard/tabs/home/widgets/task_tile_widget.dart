import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planner/app/data/task/enums/task_colors.dart';
import 'package:planner/app/data/task/enums/task_states.dart';
import 'package:planner/app/data/task/models/task.dart';

class TaskTileWidget extends StatelessWidget {
  const TaskTileWidget({Key? key, required this.task}) : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: getTaskColor(task).color,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title!,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.access_time, color: Colors.white70),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "${task.startTime} - ${task.endTime}",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.white70,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    task.note!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white,),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: 0.5,
              color: Colors.grey[200]!.withOpacity(0.7),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                TaskStates.values[task.isCompleted!].value,
                style: TextStyle(
                  color: task.isCompleted == 1 ? Colors.white60 : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TaskColors getTaskColor(Task task) {
    return task.color!;
  }
}
