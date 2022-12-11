import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planner/core/managers/lang_manager/lang_manager.dart';
import 'package:planner/core/utils/app_constants.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  final _controller = Get.find<LangManager>();

  late String _dropdownValue;

  @override
  void initState() {
    super.initState();
    if (_controller.appLocale == AppConstants.trLocale) {
      _dropdownValue = AppConstants.appLanguages[1];
    } else {
      _dropdownValue = AppConstants.appLanguages[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(
        value: _dropdownValue,
        items: AppConstants.appLanguages
            .map(
              (String i) => DropdownMenuItem(
                value: i,
                child: Text(i),
              ),
            )
            .toList(),
        onChanged: (String? value) {
          if (_dropdownValue == value) {
            return;
          }
          _dropdownValue = value!;

          if (_dropdownValue == AppConstants.appLanguages[0]) {
            _controller.setAppLocale(AppConstants.engLocale);
          } else if (_dropdownValue == AppConstants.appLanguages[1]) {
            _controller.setAppLocale(AppConstants.trLocale);
          }
          setState(() {});
        },
      ),
    );
  }
}
