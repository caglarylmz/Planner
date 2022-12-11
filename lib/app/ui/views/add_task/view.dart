import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:planner/app/ui/views/add_task/widgets/color_palette.dart';
import 'package:planner/core/widgets/buttons.dart';
import 'package:planner/core/widgets/inputs.dart';
import 'package:planner/app/ui/views/add_task/controller.dart';
import 'package:planner/app/ui/widgets/app_bar.dart';

class AddTaskView extends GetView<AddTaskController> {
  const AddTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(isBackable: true, title: "Add Task"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultInputField(
                  title: "Title",
                  hint: "Enter your title",
                  textEditingController: controller.titleController),
              DefaultInputField(
                  title: "Note",
                  hint: "Enter your note",
                  textEditingController: controller.noteController),
              Obx(
                () => DefaultInputField(
                  title: "Date",
                  hint: DateFormat.yMMMMd().format(controller.selectedDate),
                  widget: IconButton(
                    icon: const Icon(Icons.calendar_today_outlined),
                    onPressed: () =>
                        controller.getDateFromUser(context: context),
                  ),
                ),
              ),
              Row(
                children: [
                  Obx(
                    () => Expanded(
                      child: DefaultInputField(
                        title: "Start Time",
                        hint: controller.startTime,
                        widget: IconButton(
                          icon: const Icon(Icons.access_time),
                          onPressed: () => controller.getTimeFromUser(
                            context: context,
                            isStartTime: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Obx(
                    () => Expanded(
                      child: DefaultInputField(
                        title: "End Time",
                        hint: controller.endTime,
                        widget: IconButton(
                          icon: const Icon(Icons.access_time),
                          onPressed: () => controller.getTimeFromUser(
                            context: context,
                            isStartTime: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Obx(
                () => DefaultInputField(
                  title: "Remind",
                  hint: "${controller.selectedRemind} minutes early",
                  widget: DropdownButton(
                    onChanged: (String? value) =>
                        controller.setSelectedRemind(int.parse(value!)),
                    underline: Container(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: controller.remindList
                        .map<DropdownMenuItem<String>>(
                          (int value) => DropdownMenuItem<String>(
                            value: value.toString(),
                            child: Text(value.toString()),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              Obx(
                () => DefaultInputField(
                  title: "Repeat",
                  hint: controller.selectedRepeat,
                  widget: DropdownButton(
                    onChanged: (String? value) =>
                        controller.setSelectedRepeat(value!),
                    underline: Container(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: controller.repeatList
                        .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ColorPalette(),
                  AppButtons.instance.primaryButton(
                    label: "Create Task",
                    onTap: () => controller.validateDate(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
