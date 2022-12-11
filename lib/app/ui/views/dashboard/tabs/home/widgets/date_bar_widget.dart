import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/core/theme/colors.dart';
import 'package:planner/app/ui/views/dashboard/tabs/home/controller.dart';

class DateBarWidget extends GetView<HomeController> {
  const DateBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Obx(
            () => DatePicker(DateTime.now(),
            height: 85,
            width: 65,
            initialSelectedDate: controller.selectedDate,
            selectionColor: AppColors.primaryColor,
            selectedTextColor: AppColors.lightTextColor,
            monthTextStyle: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            dateTextStyle: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.grey,
              ),
            ),
            dayTextStyle: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ), onDateChange: (date) {
              controller.setSelectedDate(date);
              controller.getAllTasks();
            }),
      ),
    );
  }
}
