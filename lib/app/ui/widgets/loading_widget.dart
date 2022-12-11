import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planner/core/managers/lang_manager/lang_string_keys.dart';
import 'package:planner/core/utils/app_constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key, this.message}) : super(key: key);
  final String? message;

  @override
  Widget build(BuildContext context) {
    final strLoading = LangStringKeys.loading.name.tr;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppConstants.appIcon,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 0),
                const SizedBox(height: 10),
                Text(message ?? strLoading),
              ],
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}