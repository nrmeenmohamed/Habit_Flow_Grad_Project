import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/style_manager.dart';
import 'package:habitflow/core/services/local_notification_services.dart';

import '../../../core/managers/color_manager.dart';

class ChooseTimeSelector extends StatefulWidget {
  final Map<String, dynamic> timeDate;
  const ChooseTimeSelector({super.key, required this.timeDate});

  @override
  _ChooseTimeSelectorState createState() => _ChooseTimeSelectorState();
}

class _ChooseTimeSelectorState extends State<ChooseTimeSelector> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Check if the container is not selected, only then schedule a notification
        if (!_isSelected) {
          LocalNotificationServices.showScheduledDailyNotification(
              hour: widget.timeDate['hour'], id: widget.timeDate['id']);
          print('Scheduled notification for ${widget.timeDate['hour']} hour.');
        } else {
          // id of habit
          LocalNotificationServices.cancelNotification(
              id: widget.timeDate['id']);
          print('Notification is cancel. No action taken.');
        }

        // Toggle the selection state
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          color: _isSelected
              ? ColorManager.backgroundColor
              : ColorManager.accentColor,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: _isSelected
                ? ColorManager.accentColor
                : ColorManager.backgroundColor,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.timeDate['time']!,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _isSelected ? ColorManager.secondaryColor : Colors.white,
              ),
            ),
            Text(
              widget.timeDate['period']!,
              style: StyleManager.largeTitleText(
                color: _isSelected ? ColorManager.secondaryColor : Colors.white,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              widget.timeDate['label']!,
              style: StyleManager.descriptionText(
                color: ColorManager.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
