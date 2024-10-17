import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/validation.dart';
import '../onboarding_screen_one.dart';
import '../components/CustomTextFormField.dart';

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
      height: 320.h,
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
          CustomTextFormField(
            hintText: 'What Is Your Name?',
            icon: FontAwesomeIcons.user,
            controller: nameController,
            validator: validateName,
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            hintText: 'How Old Are You?',
            icon: FontAwesomeIcons.cakeCandles,
            controller: ageController,
            keyboardType: TextInputType.number,
            validator: validateAge,
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            hintText: 'Where Do You Live?',
            icon: FontAwesomeIcons.locationDot,
            controller: locationController,
            validator: validateLocation,
          ),
        ],
      ),
    );
  }
}
