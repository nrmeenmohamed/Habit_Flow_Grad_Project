import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';

class CustomCloseIcon extends StatefulWidget {
  const CustomCloseIcon({super.key});
  @override
  State<CustomCloseIcon> createState() => _CustomCloseIconState();
}

class _CustomCloseIconState extends State<CustomCloseIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 40.w,
        onPressed: () {
          /* write the closing function code here */
        },
        icon: const Icon(
          Icons.close,
          color: ColorManager.primaryColor,
        ));
  }
}
