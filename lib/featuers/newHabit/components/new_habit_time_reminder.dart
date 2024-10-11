import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';

class NewHabitTimeReminder extends StatefulWidget {
  const NewHabitTimeReminder({super.key});

  @override
  _NewHabitTimeReminderState createState() => _NewHabitTimeReminderState();
}

class _NewHabitTimeReminderState extends State<NewHabitTimeReminder> {
  String selectedTime = "Morning";

  void selectTime(String time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TimeContainer(
          time: "Morning",
          isSelected: selectedTime == "Morning",
          onTap: () => selectTime("Morning"),
        ),
        TimeContainer(
          time: "Noon",
          isSelected: selectedTime == "Noon",
          onTap: () => selectTime("Noon"),
        ),
        TimeContainer(
          time: "Evening",
          isSelected: selectedTime == "Evening",
          onTap: () => selectTime("Evening"),
        ),
      ],
    );
  }
}

class TimeContainer extends StatelessWidget {
  final String time;
  final bool isSelected;
  final VoidCallback onTap;

  TimeContainer({
    required this.time,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    Color borderColor = isSelected ? ColorManager.primaryColor : ColorManager.backgroundColor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? ColorManager.backgroundColor : ColorManager.secondaryColor,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: borderColor,
            width: 2.w,
          ),
        ),
        child: Text(
          time,
          style: TextStyle(
            color: isSelected ? ColorManager.primaryColor : ColorManager.backgroundColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
