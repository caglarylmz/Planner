import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class LocalNotificationManager extends GetxService {

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  final androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      "0", "TASK_NOTIFY",
      importance: Importance.max, priority: Priority.high);

  @override
  void onInit() async {
    super.onInit();
    tz.initializeTimeZones();

    const androidInitializationSettings =
        AndroidInitializationSettings("appicon");
    const initializationSettings =
        InitializationSettings(android: androidInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> displayNotification(
      {required String title, required String body}) async {
    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, title, body, platformChannelSpecifics,
        payload: "Default_Sound");
  }

  Future<void> scheduledNotification() async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
        0,
        "title",
        "body",
        tz.TZDateTime.now(tz.local).add(const Duration(seconds: 10)),
        NotificationDetails(android: androidPlatformChannelSpecifics),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }
}
