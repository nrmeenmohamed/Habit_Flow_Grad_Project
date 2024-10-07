import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';

import '../managers/style_manager.dart';

class CustomTitle extends StatelessWidget {
  final String month;
  final int day;

  const CustomTitle({super.key, required this.day, required this.month});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          month,
          style: StyleManager.mediumText(
              fontSize: 25.0, color: ColorManager.primaryColor),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          '$day',
          style: StyleManager.largeTitleText(
              fontSize: 35.0, color: ColorManager.primaryColor),
        ),
      ],
    );
  }
}
