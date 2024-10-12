import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/asset_manager.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/widgets/custom_primary_elevated_btn.dart';
import 'package:habitflow/core/widgets/custom_secondary_elevated_btn.dart';
import 'package:habitflow/featuers/onboardingScreen/components/choose_habit.dart';
import 'package:habitflow/featuers/onboardingScreen/data/habit_model.dart';

import '../../../../core/managers/style_manager.dart';
import '../../components/slider.dart';

class BodyOnboarding2Screen extends StatelessWidget {
  const BodyOnboarding2Screen({super.key});

  final List<HabitModel> habits = const [
    HabitModel(
      habitName: 'Workout',
      habitImage: AssetsManager.workout,
    ),
    HabitModel(
      habitName: 'read more',
      habitImage: AssetsManager.book,
    ),
    HabitModel(
      habitName: 'Take pictures',
      habitImage: AssetsManager.camera,
    ),
    HabitModel(
      habitName: 'Planning',
      habitImage: AssetsManager.planing,
    ),
    HabitModel(
      habitName: 'Journaling',
      habitImage: AssetsManager.journaling,
    ),
    HabitModel(
      habitName: 'Less social media',
      habitImage: AssetsManager.socialMedia,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Slider
        const CustomSlider(progressPercent: 0.5),
        SizedBox(
          height: 25.h,
        ),

        // Text 1
        Text(
          'What habits do you want to work on?',
          style: StyleManager.largeTitleText(),
        ),
        SizedBox(
          height: 5.h,
        ),

        // Text 2
        Text(
          'Choose one or more habits.',
          style: StyleManager.descriptionText(
            color: ColorManager.accentColor,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),

        // choose habits
        Expanded(
          child: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
            children: List.generate(
              habits.length,
              (index) => ChooseHabitContainer(
                habitModel: habits[index],
              ),
            ).toList(),
          ),
        ),

        SizedBox(
          height: 30.h,
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
