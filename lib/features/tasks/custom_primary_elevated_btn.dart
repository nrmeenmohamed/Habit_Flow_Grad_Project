import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/managers/color_manager.dart';
import '../../core/managers/size_manager.dart';
import '../../core/managers/style_manager.dart';



class CustomPrimaryElevatedBtn extends StatelessWidget {
  final void Function() onPressed;
  final String buttonTxt;
  final double btnWidth;

  const CustomPrimaryElevatedBtn(
      {super.key,
      required this.onPressed,
      required this.buttonTxt,
      required this.btnWidth});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            const WidgetStatePropertyAll<Color>(ColorManager.primaryColor),
        overlayColor:
            const WidgetStatePropertyAll<Color>(ColorManager.secondaryColor),
        minimumSize:
            WidgetStatePropertyAll<Size>(Size(btnWidth, SizeManager.s64.sp)),
        shape: WidgetStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(SizeManager.s32.sp)))),
      ),
      child: Text(
        buttonTxt,
        style: StyleManager.mediumText(color: ColorManager.backgroundColor),
      ),
    );
  }
}
