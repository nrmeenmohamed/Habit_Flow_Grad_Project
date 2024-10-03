import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData themeApp = ThemeData(
  scaffoldBackgroundColor: ColorManager.backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorManager.backgroundColor,
  ),
);
