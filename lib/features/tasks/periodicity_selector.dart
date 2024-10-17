import 'package:day_picker/day_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/managers/size_manager.dart';

class CustomPeriodicitySelector extends StatefulWidget {
  final Function(String) onDaySelected; // إضافة خاصية onDaySelected

  const CustomPeriodicitySelector({super.key, required this.onDaySelected});

  @override
  State<CustomPeriodicitySelector> createState() => _CustomPeriodicitySelector();
}

class _CustomPeriodicitySelector extends State<CustomPeriodicitySelector> {
  final List<DayInWeek> _days = [
    DayInWeek("Sat", dayKey: "saturday"),
    DayInWeek("Sun", dayKey: "sunday"),
    DayInWeek("Mon", dayKey: "monday"),
    DayInWeek("Tue", dayKey: "tuesday"),
    DayInWeek("Wed", dayKey: "wednesday"),
    DayInWeek("Thu", dayKey: "thursday"),
    DayInWeek("Fri", dayKey: "friday"),
  ];

  String selectedDay = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SelectWeekDays(
          selectedDaysFillColor: ColorManager.secondaryColor,
          selectedDayTextColor: Colors.white,
          fontSize: SizeManager.s14,
          fontWeight: FontWeight.w500,
          days: _days,
          border: false,
          width: 500.w,
          boxDecoration: BoxDecoration(
            color: ColorManager.accentColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          onSelect: (values) {
            setState(() {
              selectedDay = values.join(", ");
              widget.onDaySelected(selectedDay);
            });
          },
        ),
      ),
    );
  }
}
