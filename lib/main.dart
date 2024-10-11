import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/theme_manager.dart';
import 'package:habitflow/featuers/Success%20Screen/success_screen.dart';
import 'package:habitflow/featuers/home/Screens/home_screen.dart';
import 'package:habitflow/featuers/newHabit/screens/new_habit_screen.dart';
import 'package:habitflow/test.dart';
import 'core/widgets/custom_primary_elevated_btn.dart';


import 'featuers/newHabit/components/new_habit_time_reminder.dart';
import 'featuers/progress/components/time_periodic_selector.dart';

void main() {
  runApp(const HabitFlow());
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
        home: NewHabitScreen(),
    // initialRoute: "successScreen",
    routes: {
        "homeScreen": (context)=> HomeScreen(),
      "newHabitScreen": (context)=> NewHabitScreen(),

      "successScreen": (context)=> SuccessScreen(),



      },

    )
    );
  }
}
