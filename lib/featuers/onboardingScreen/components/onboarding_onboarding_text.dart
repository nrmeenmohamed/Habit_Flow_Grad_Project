import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/asset_manager.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/managers/style_manager.dart';
class OnboardingOnboardingText extends StatelessWidget {
  const OnboardingOnboardingText({super.key});
  @override
  Widget build(BuildContext context) {
    return
      //debugShowCheckedModeBanner: false,
       Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(AssetsManager.onboarding),
              width: 500.w,
              height: 250.h ,
            ),
             SizedBox(height: 20.h),
            Text(
              'Habitat',
              style: StyleManager.largeTitleText(color: ColorManager.primaryColor)
              ),

            SizedBox(height: 20.h),
            Text(
                'Build habits and routines easily',
                style: StyleManager.mediumText(color: ColorManager.secondaryColor)
            ),

          ],
        );
  }
}
