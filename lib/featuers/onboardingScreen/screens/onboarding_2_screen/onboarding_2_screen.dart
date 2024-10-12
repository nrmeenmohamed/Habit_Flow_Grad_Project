import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/boarding_app_bar.dart';
import 'body_onboarding_2_screen.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

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
                numberPage: '2',
              ),
              SizedBox(
                height: 10.h,
              ),
              const Expanded(child: BodyOnboarding2Screen()),
            ],
          ),
        ),
      ),
    );
  }
}
