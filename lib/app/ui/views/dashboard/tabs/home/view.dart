import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/widgets/date_bar_widget.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/widgets/tasks_widget.dart';
import 'package:planner/core/managers/route_manager/app_routes.dart';
import 'package:planner/core/widgets/buttons.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/controller.dart';
import 'package:planner/app/ui/widgets/app_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          children: [
            _addTask(context),
            const SizedBox(height: 10),
            const DateBarWidget(),
            const SizedBox(height: 10),
            const TasksWidget(),
          ],
        ),
      ),
    );
  }

  _addTask(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "Today",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
          AppButtons.instance.primaryButton(
            label: "+ Add Task",
            onTap: () => Get.toNamed(AppRoutes.addTask),
          ),
        ],
      );
}
