import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/theme_manager.dart';

import 'package:habitflow/featuers/home/Screens/home_screen.dart';
import 'package:habitflow/featuers/newHabit/screens/new_habit_screen.dart';
import 'featuers/onboardingScreen/Screens/success/success_screen.dart';

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

        home: const HomeScreen(),
    // initialRoute: "successScreen",
    routes: {
        "homeScreen": (context)=> const HomeScreen(),
      "newHabitScreen": (context)=> const NewHabitScreen(),

      "successScreen": (context)=> const SuccessScreen(),
      // "progressScreen": (context)=> SuccessScreen(),
      // "habitDetails": (context)=> SuccessScreen(),




      },

    )



    );
  }
}