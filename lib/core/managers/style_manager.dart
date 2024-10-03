import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StyleManager {
  static TextStyle descriptionText(
          {double? fontSize, Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: fontSize ?? 16.sp,
          color: color,
          fontWeight: fontWeight ?? FontWeight.normal);

  static TextStyle mediumText(
          {double? fontSize, Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: fontSize ?? 16.sp,
          color: color,
          fontWeight: fontWeight ?? FontWeight.w500);

  static TextStyle largeTitleText(
          {double? fontSize, Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: fontSize ?? 26.sp,
          color: color,
          fontWeight: fontWeight ?? FontWeight.bold);

  static TextStyle smallTitleText(
          {double? fontSize, Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: fontSize ?? 22.sp,
          color: color,
          fontWeight: fontWeight ?? FontWeight.bold);
}
