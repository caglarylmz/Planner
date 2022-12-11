import "package:get/get.dart";
import 'package:planner/core/managers/lang_manager/lang_string_keys.dart';
String? validateEmail(String value) {
  final regex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  if (value.isEmpty) {
    return  LangStringKeys.valEmailEmpty.name.tr;
  } else if (!regex.hasMatch(value)) {
    return  LangStringKeys.valEmailValid.name.tr;
  }
  return null;

}
// ToDo: lang stringleri tanımlanacak
String validatePassword(String value) {
  if (value.isEmpty) {
    return "Password is required";
  } else if (value.length < 5) {
    return "Password must be at least 5 characters";
  } else {
    return "";
  }
}

// ToDo: lang stringleri tanımlanacak
String confirmPassword(String value, String password) {
  if (value == password) {
    return "";
  } else {
    return "Password doesn't match, Please retype password.";
  }
}