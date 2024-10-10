import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/managers/style_manager.dart';
class HomeHabitContainer extends StatefulWidget {
  const HomeHabitContainer({super.key});
  @override
  State<HomeHabitContainer> createState() => _HomeHabitContainerState();
}
class _HomeHabitContainerState extends State<HomeHabitContainer> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.04,
                left: MediaQuery.of(context).size.width * 0.025,
              ),

              child: Text(
                'Read 10 pages of a book',
                style: StyleManager.smallTitleText(color: ColorManager.primaryColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.025,
              ),

              child: Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0.r)),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                materialTapTargetSize: MaterialTapTargetSize.padded,
                activeColor: ColorManager.accentColor,
                side: const BorderSide(color: ColorManager.primaryColor),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
            top: MediaQuery.of(context).size.height * 0.000001,
          ),

          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: isChecked ? ColorManager.accentColor : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Usually completed at 10.15PM',
              style: TextStyle(
                color: isChecked ? ColorManager.backgroundColor : ColorManager.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
