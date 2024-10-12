import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/managers/style_manager.dart';

class CustomDaySelector extends StatefulWidget {
  const CustomDaySelector({super.key});

  @override
  State<CustomDaySelector> createState() => _CustomDaySelectorState();
}

class _CustomDaySelectorState extends State<CustomDaySelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      padding: const EdgeInsets.only(bottom: 4),
      child: DatePicker(
        DateTime.now(),
        //height: 100.0,
        width: 47.w,
        daysCount: 7, // remove this for infinite days along
        initialSelectedDate: DateTime.now(),
        selectionColor: ColorManager.secondaryColor,
        selectedTextColor: Colors.white,
        dateTextStyle: StyleManager.mediumText(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: ColorManager.primaryColor),
        dayTextStyle: StyleManager.mediumText(
            fontSize: 10.0, color: ColorManager.primaryColor),
        monthTextStyle: StyleManager.mediumText(
            fontSize: 10.0, color: ColorManager.primaryColor),
        onDateChange: (date) {
          setState(
            () {
              print('$date');
            },
          );
        },
      ),
    );
  }
}
