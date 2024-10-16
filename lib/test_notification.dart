import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/widgets/periodicity_selector.dart';
import 'featuers/onboardingScreen/components/TextField.dart';
import 'featuers/onboardingScreen/components/choose_time_selector_component.dart';

class TestNotification extends StatelessWidget {
  const TestNotification({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> timeData = [
      {'time': '6:00', 'period': 'AM', 'label': 'Morning', 'hour': 6, 'id': 0},
      {'time': '12:00', 'period': 'PM', 'label': 'Noon', 'hour': 12, 'id': 1},
      {'time': '6:00', 'period': 'PM', 'label': 'Evening', 'hour': 18, 'id': 2},
    ];
    var controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Local Notifications'),
      ),
      body: Column(
        children: [
          CustomTextField(
            hintText: 'habit name',
            controller: controller,
          ),
          const CustomPeriodicitySelector(),
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
        ],
      ),
    );
  }
}
