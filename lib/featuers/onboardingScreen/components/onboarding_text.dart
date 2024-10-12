import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/asset_manager.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/managers/style_manager.dart';

import '../../../core/widgets/custom_primary_elevated_btn.dart';

class OnboardingText extends StatelessWidget {
  const OnboardingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage(AssetsManager.onboarding),
            width: 500.w,
            height: 250.h,
          ),
          SizedBox(height: 20.h),
          Text('Habitat',
              style: StyleManager.largeTitleText(
                  color: ColorManager.primaryColor)),
          SizedBox(height: 20.h),
          Text('Build habits and routines easily',
              style:
                  StyleManager.mediumText(color: ColorManager.secondaryColor)),
          SizedBox(height: 50.h),
          CustomPrimaryElevatedBtn(onPressed: () {  }, buttonTxt: 'Lets Go', btnWidth: 300,),
          SizedBox(height: 10.h),
          TextButton(onPressed: (){}, child: const Text("need an account ? SignUp"))

        ],
      ),
    );
  }
}

