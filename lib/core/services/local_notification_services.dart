import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationServices {
  // Initialize object
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static onTap(NotificationResponse notificationResponse) {
    print(notificationResponse.id!.toString());
    print(notificationResponse.payload!.toString());
  }

  // Create initiate method => Initialization Settings of platform
  static Future init() async {
    // Create a notification channel for Android 8.0 and higher
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'id1', // id
      'basic notification', // name
      importance: Importance.max,
    );

    // Create the notification channel on Android
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    // Initialization Settings
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );
    flutterLocalNotificationsPlugin.initialize(
      // Setup platform setting
      settings,
      // Action when clicking on the notification
      onDidReceiveNotificationResponse: onTap,
      // Action when notification is in background
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  // cancel all notification
  static void cancelAllNotification() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  // cancel notification
  static void cancelNotification({required int id}) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }

// Scheduled Daily notification
  static void showScheduledDailyNotification({
    required var hour,
    required int id,
  }) async {
    NotificationDetails notificationDetails = const NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'Scheduled daily notification',
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
    tz.initializeTimeZones(); // initialize time zone for Scheduled Notification
    tz.setLocalLocation(tz.getLocation('Africa/Cairo'));
    var currentTime = tz.TZDateTime.now(tz.local);
    var scheduledDate = tz.TZDateTime(
      tz.local, // location
      currentTime.year, // year
      currentTime.month, // month
      currentTime.day, // day
      hour,
    );
    // if scheduledDate is passed
    if (scheduledDate.isBefore(currentTime)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      'Daily Habit Check-In',
      'It\'s time for your habit routine. Stay consistent and keep the streak going!',
      scheduledDate, // run based one specific date
      notificationDetails,
      //payload: 'trickes_3',
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}
