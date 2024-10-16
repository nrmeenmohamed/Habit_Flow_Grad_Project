import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/style_manager.dart';
import '../data/habit_model.dart';

class ChooseHabitContainer extends StatefulWidget {
  final HabitModel habitModel;
  const ChooseHabitContainer({super.key, required this.habitModel});

  @override
  State<ChooseHabitContainer> createState() => _ChooseHabitContainerState();
}

class _ChooseHabitContainerState extends State<ChooseHabitContainer> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
        //widget.isSelected = false;
      },
      child: Container(
        padding: const EdgeInsetsDirectional.all(10),
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: ColorManager.accentColor,
            width: 2,
          ),
          color: _isSelected
              ? ColorManager.backgroundColor
              : ColorManager.accentColor,
        ),
        child: Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage(widget.habitModel.habitImage),
                fit: BoxFit.cover,
                color: _isSelected
                    ? ColorManager.accentColor
                    : ColorManager.backgroundColor,
              ),
            ),
            Text(
              widget.habitModel.habitName,
              style: StyleManager.descriptionText(
                color: _isSelected
                    ? ColorManager.accentColor
                    : ColorManager.backgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
