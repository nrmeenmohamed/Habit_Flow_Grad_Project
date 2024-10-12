import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/managers/style_manager.dart';
import 'package:habitflow/core/widgets/close_icon.dart';
import 'package:habitflow/core/widgets/custom_primary_elevated_btn.dart';

import '../../../core/widgets/periodicity_selector.dart';

class HomeHabitContainer extends StatefulWidget {
  late String habitName;

  HomeHabitContainer({super.key, required this.habitName});
  @override
  State<HomeHabitContainer> createState() => _HomeHabitContainerState();
}

class _HomeHabitContainerState extends State<HomeHabitContainer> {
  bool isChecked = false;

  bool Completed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showHabitDetails(context, numberCompletedDay: 4);
      },
      child: Column(
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
                  widget.habitName,
                  style: StyleManager.smallTitleText(
                      color: ColorManager.primaryColor),
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
                      Completed = value!;
                      isChecked = value;
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
                color:
                    isChecked ? ColorManager.accentColor : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                Completed
                    ? " Completed at 7.20pm"
                    : 'Usually completed at 10.15PM',
                style: TextStyle(
                  color: isChecked
                      ? ColorManager.backgroundColor
                      : ColorManager.secondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> showHabitDetails(
    BuildContext context, {
    required int numberCompletedDay,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                // habit title
                Expanded(
                  child: Text(
                    widget.habitName,
                    style: StyleManager.smallTitleText(
                        // color: ColorManager.backgroundColor,
                        ),
                  ),
                ),

                // close icon
                const CustomCloseIcon(),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),

            // completed day of habit
            const CustomPeriodicitySelector(),
            SizedBox(
              height: 30.h,
            ),

            // number of complete days text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Text(
                'This Week you have completed this habit ${numberCompletedDay.toString()} out of 7 days!',
                style: StyleManager.mediumText(
                    //color: ColorManager.backgroundColor,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            Text(
              'Great Jop!',
              style: StyleManager.mediumText(
                color: ColorManager.secondaryColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),

            CustomPrimaryElevatedBtn(
              onPressed: () {
                // go to progress screen
              },
              buttonTxt: 'see my statistics',
              btnWidth: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
