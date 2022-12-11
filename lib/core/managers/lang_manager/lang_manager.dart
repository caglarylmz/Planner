import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:planner/core/utils/app_constants.dart';
import 'package:planner/core/utils/storage_key.dart';

class LangManager extends GetxService{
  final _storage = GetStorage();
  final _appLocale = AppConstants.engLocale.obs;
  Locale get appLocale =>_appLocale.value;

  setAppLocale(Locale locale)async{
    _appLocale.value=locale;
    Get.updateLocale(_appLocale.value);
    await saveStorage();
  }

  @override
  void onInit() {
    super.onInit();
    _appLocale.value = getStorage();
    Get.updateLocale(_appLocale.value);
  }


  Locale getStorage() {
    final value = _storage.read(StorageKeys.languageKey);
    if (value == AppConstants.langTRString) {
      return AppConstants.trLocale;
    } else {
      return AppConstants.engLocale;
    }
  }
  Future<bool> saveStorage() async {
    final val = _appLocale.value == AppConstants.engLocale
        ? AppConstants.langENGString
        : AppConstants.langTRString;
    await _storage.write(StorageKeys.languageKey, val);
    return true;
  }
}