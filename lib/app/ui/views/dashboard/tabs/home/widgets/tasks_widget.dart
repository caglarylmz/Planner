import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:planner/core/widgets/buttons.dart';
import 'package:planner/app/data/task/models/task.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/controller.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/widgets/task_tile_widget.dart';

class TasksWidget extends GetView<HomeController> {
  const TasksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
            () => ListView.builder(
          itemCount: controller.tasks.length,
          itemBuilder: (context, index) {
            var task = controller.tasks[index];
            if (task.repeat == "Daily") {
              return AnimationConfiguration.staggeredList(
                  position: index,
                  child: SlideAnimation(
                    child: FadeInAnimation(
                      child: GestureDetector(
                        onTap: () => _showBottomSheet(context, task),
                        child: TaskTileWidget(
                          task: task,
                        ),
                      ),
                    ),
                  ));
            }
            if (task.date == DateFormat.yMd().format(controller.selectedDate)) {
              return AnimationConfiguration.staggeredList(
                  position: index,
                  child: SlideAnimation(
                    child: FadeInAnimation(
                      child: GestureDetector(
                        onLongPress: () => _showBottomSheet(context, task),
                        child: TaskTileWidget(
                          task: task,
                        ),
                      ),
                    ),
                  ));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
  _showBottomSheet(BuildContext context, Task task) {
    Get.bottomSheet(Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: task.isCompleted == 0 ? Get.height * 0.32 : Get.height * 0.24,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          task.isCompleted == 0
              ? AppButtons.instance.primaryButton(
            label: "Task Completed",
            onTap: () {
              controller.updateTask(task);
              Navigator.pop(context);
            },
            isLarge: true,
            isSuccess: true,
          )
              : Container(),
          AppButtons.instance.primaryButton(
              label: "Delete Task",
              onTap: () => Get.defaultDialog(
                  title: "Delete Confirmation",
                  middleText: "Are you sure delete this Task?",
                  textCancel: "Cancel",
                  textConfirm: "Ok",
                  onConfirm: () {
                    controller.deleteTask(task);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }),
              isLarge: true,
              isError: true),
          const SizedBox(
            height: 20,
          ),
          AppButtons.instance.defaultButton(
              label: "Close",
              onTap: () => Navigator.pop(context),
              isLarge: true),
        ],
      ),
    ));
  }
}
