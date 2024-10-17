import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../models/validation.dart';
import 'components/slider.dart';
import 'widgets/action_buttons.dart';
import 'widgets/input_container.dart';
import 'widgets/onboarding_one_appbar.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _validate = false; // لتحديد ما إذا كنا بحاجة إلى التحقق من الحقول

  double progressPercent = 0.0;

  @override
  void initState() {
    super.initState();
    nameController.addListener(_updateProgress);
    ageController.addListener(_updateProgress);
    locationController.addListener(_updateProgress);
  }

  void _updateProgress() {
    double filledFields = 0;

    if (validateName(nameController.text) == null &&
        nameController.text.isNotEmpty) filledFields++;
    if (validateAge(ageController.text) == null &&
        ageController.text.isNotEmpty) filledFields++;
    if (validateLocation(locationController.text) == null &&
        locationController.text.isNotEmpty) filledFields++;

    setState(() {
      progressPercent = filledFields / 3; // 3 حقول إجماليًا
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: OnboardingOneAppbar(progressPercent: progressPercent),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Form(
          key: _formKey, // نقل الـ Form هنا
          autovalidateMode:
          _validate ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Expanded( // استخدام Expanded هنا
                child: SingleChildScrollView(
                  child: InputContainer(
                    nameController: nameController,
                    ageController: ageController,
                    locationController: locationController,
                  ),
                ),
              ),
              ActionButtons(
                onProceed: () {
                  setState(() {
                    _validate = true; // تمكين التحقق عند النقر على Proceed
                  });
                  if (_formKey.currentState!.validate()) {
                    // إضافة الشفرة اللازمة للانتقال إلى الشاشة التالية هنا
                  }
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}



