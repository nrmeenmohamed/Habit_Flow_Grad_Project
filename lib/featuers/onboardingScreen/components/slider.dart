import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomSlider extends StatelessWidget {
  final double progressPercent;
  const CustomSlider({super.key, required this.progressPercent});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 370.w,
      lineHeight: 8.h,
      percent: progressPercent,
      progressColor: ColorManager.primaryColor,
      barRadius: Radius.circular(10.0.r),
    );
  }
}
