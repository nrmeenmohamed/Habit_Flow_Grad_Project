import 'package:flutter/material.dart';
import 'package:habitflow/core/managers/theme_manager.dart';
import 'package:habitflow/test.dart';

void main() {
  runApp(const HabitFlow());
}

class HabitFlow extends StatelessWidget {
  const HabitFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeApp,
      home: Test(),
    );
  }
}
