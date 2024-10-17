import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/slider.dart';

class OnboardingOneAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final double progressPercent;

  const OnboardingOneAppbar({super.key, required this.progressPercent});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, size: 20.w), // تصغير حجم الأيقونة
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      centerTitle: true,
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only( right: 15.w,top: 0,bottom: 0,),
          child: CustomSlider(
            progressPercent: progressPercent,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}