import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_bottom_nav_bar.dart';
import '../../../core/widgets/custom_primary_elevated_btn.dart';
import '../../../core/widgets/custom_secondary_elevated_btn.dart';
import '../components/TextField.dart';
import '../components/slider.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  TextEditingController ageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OnboardingOneAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            InputContainer(
              nameController: nameController,
              ageController: ageController,
              locationController: locationController,
            ),
            const Spacer(),
            const ActionButtons(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}



class OnboardingOneAppbar  extends StatelessWidget implements PreferredSizeWidget {
  const OnboardingOneAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: const [
        CustomSlider(
          progressPercent: 0,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}


class InputContainer extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController ageController;
  final TextEditingController locationController;

  const InputContainer({
    super.key,
    required this.nameController,
    required this.ageController,
    required this.locationController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomTextField(
            hintText: 'What Is Your Name? ',
            controller: nameController,
          ),
          SizedBox(height: 20.h),
          CustomTextField(
            hintText: 'How Old Are You ? ',
            controller: ageController,
          ),
          SizedBox(height: 20.h),
          CustomTextField(
            hintText: 'Where Do You Live? ',
            controller: locationController,
          ),
        ],
      ),
    );
  }
}


class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: CustomSecondaryElevatedBtn(
            btnWidth: double.infinity,
            buttonTxt: "Skip",
            onPressed: () {},
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: CustomPrimaryElevatedBtn(
            btnWidth: double.infinity,
            buttonTxt: "Proceed",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

