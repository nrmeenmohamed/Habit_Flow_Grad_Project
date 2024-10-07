import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomSlider extends StatelessWidget {
  final double progressPercent;
  const CustomSlider({required this.progressPercent});

  @override
  Widget build(BuildContext context) {
    return new LinearPercentIndicator(
      width: 370.w,
      lineHeight: 8.h,
      percent: progressPercent,
      progressColor: ColorManager.primaryColor,
    );
  }
}
