import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/theme_manager.dart';
import 'package:habitflow/featuers/onboardingScreen/pages/onboarding_screen_one.dart';
import 'package:habitflow/featuers/onboardingScreen/pages/welcome_screen.dart';
import 'package:habitflow/featuers/progress/page/statistics.dart';
import 'package:habitflow/test.dart';

import 'featuers/onboardingScreen/components/onboarding_text.dart';

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
        home: const Scaffold(
          body: OnboardingScreenOne(),
        )
      ),
    );
  }
}
