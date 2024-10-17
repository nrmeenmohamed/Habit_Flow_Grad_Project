
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/features/tasks/view/TodoListScreen.dart';

import 'core/managers/theme_manager.dart';
import 'features/tasks/model/database/db_helper.dart';
import 'features/welcome/welcome_screen.dart';

void main()async {

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
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeApp,
          initialRoute: '/',
          routes: {
            '/': (context) => const WelcomeScreen(),
            '/onboarding': (context) =>    TodoListScreen(),
          },
        );
      },
    );
  }
}
