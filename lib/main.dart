import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/theme_manager.dart';
import 'package:habitflow/core/services/local_notification_services.dart';
import 'package:habitflow/core/services/work_manager_services.dart';
import 'package:habitflow/featuers/home/Screens/home_screen.dart';
import 'package:permission_handler/permission_handler.dart';

import 'featuers/newHabit/screens/new_habit_screen.dart';
import 'featuers/onboardingScreen/Screens/success/success_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // to improve performance of app when run
  await Future.wait([
    LocalNotificationServices.init(), // Initialize notifications
    requestNotificationPermission(), // Request notification permission (for Android 13+)
    WorkManageServices().init(), // to run task in background
  ]);
  runApp(const HabitFlow());
}

// Request notification permission (for Android 13+)
Future<void> requestNotificationPermission() async {
  // Check and request notification permission
  PermissionStatus status = await Permission.notification.request();

  if (status.isDenied) {
    // The user denied notification permissions
    print("Permission not granted for notifications.");
  } else if (status.isPermanentlyDenied) {
    // The user permanently denied notification permissions, open app settings
    openAppSettings();
  }
}

class HabitFlow extends StatelessWidget {
  const HabitFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeApp,
          home: const HomeScreen(),
          // initialRoute: "successScreen",
          routes: {
            "homeScreen": (context) => const HomeScreen(),
            "newHabitScreen": (context) => const NewHabitScreen(),

            "successScreen": (context) => const SuccessScreen(),
            // "progressScreen": (context)=> SuccessScreen(),
            // "habitDetails": (context)=> SuccessScreen(),
          },
        ));
  }
}
