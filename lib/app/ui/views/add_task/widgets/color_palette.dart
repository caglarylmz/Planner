import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planner/app/data/task/enums/task_colors.dart';
import 'package:planner/app/ui/views/add_task/controller.dart';

class ColorPalette extends GetView<AddTaskController> {
  const ColorPalette({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Note Color",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: GestureDetector(
            onTap: () => Get.bottomSheet(
              SizedBox(
                width: Get.width,
                height: 100,
                child: Center(
                  child: Wrap(
                    children: List<Widget>.generate(
                      TaskColors.values.length,
                      (index) => GestureDetector(
                        onTap: () {
                          controller
                              .setSelectedColor(TaskColors.values[index]);
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: TaskColors.values[index].color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            child: Obx(
              () => CircleAvatar(
                radius: 14,
                backgroundColor: controller.selectedColor.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
