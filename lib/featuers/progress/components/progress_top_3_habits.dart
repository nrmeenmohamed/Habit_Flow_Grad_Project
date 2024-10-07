import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';

import '../../../core/managers/asset_manager.dart';

class ProgressTop3Habits extends StatelessWidget {
  const ProgressTop3Habits({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorManager.accentColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top 3 habits',
            style: TextStyle(
              color: ColorManager.backgroundColor,
              fontSize: MediaQuery.of(context).size.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image(
                    image: const AssetImage(AssetsManager.book),
                    width: 70.w,
                    height: 100.h,
                  ),
                  SizedBox(height: 3.h),
                  const Text(
                    'Reading',
                    style: TextStyle(
                        color: ColorManager.backgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Image(
                    image: const AssetImage(AssetsManager.camera),
                    width: 150.w,
                    height: 100.h,
                  ),
                  SizedBox(height: 3.h),
                  const Text(
                    'Meditation',
                    style: TextStyle(
                        color: ColorManager.backgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Image(
                    image: const AssetImage(AssetsManager.journaling),
                    width: 50.w,
                    height: 100.h,
                  ),
                  SizedBox(height: 3.h),
                  const Text(
                    'Journalling',
                    style: TextStyle(
                        color: ColorManager.backgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
