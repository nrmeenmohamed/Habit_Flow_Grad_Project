import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/featuers/onboardingScreen/screens/onboarding_3_screen/body_onboarding_3_screen.dart';

import '../../components/boarding_app_bar.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BoardingAppBar(
                numberPage: '3',
              ),
              SizedBox(
                height: 10.h,
              ),
              const Expanded(child: BodyOnboarding3Screen()),
            ],
          ),
        ),
      ),
    );
  }
}
