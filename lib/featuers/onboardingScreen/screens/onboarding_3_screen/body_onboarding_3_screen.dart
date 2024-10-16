import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/widgets/custom_primary_elevated_btn.dart';
import 'package:habitflow/core/widgets/custom_secondary_elevated_btn.dart';
import 'package:habitflow/featuers/onboardingScreen/components/choose_time_selector_component.dart';

import '../../../../core/managers/style_manager.dart';
import '../../components/slider.dart';

class BodyOnboarding3Screen extends StatelessWidget {
  const BodyOnboarding3Screen({super.key});

  final List<Map<String, dynamic>> timeData = const [
    {'time': '6:00', 'period': 'AM', 'label': 'Morning', 'hour': 6, 'id': 0},
    {'time': '12:00', 'period': 'PM', 'label': 'Noon', 'hour': 12, 'id': 1},
    {'time': '6:00', 'period': 'PM', 'label': 'Evening', 'hour': 18, 'id': 2},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Slider
        const CustomSlider(progressPercent: 0.7),
        SizedBox(
          height: 25.h,
        ),

        // Text 1
        Text(
          'When do you want us to remind you?',
          style: StyleManager.largeTitleText(),
        ),
        SizedBox(
          height: 20.h,
        ),

        Expanded(
          child: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
            children: List.generate(
              timeData.length,
              (index) => ChooseTimeSelector(
                timeDate: timeData[index],
              ),
            ).toList(),
          ),
        ),

        // buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSecondaryElevatedBtn(
              onPressed: () {},
              buttonTxt: 'Skip',
              btnWidth: MediaQuery.of(context).size.width / 3,
            ),
            CustomPrimaryElevatedBtn(
              onPressed: () {},
              buttonTxt: 'Proceed',
              btnWidth: MediaQuery.of(context).size.width / 3,
            ),
          ],
        ),
      ],
    );
  }
}
