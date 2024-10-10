import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../managers/color_manager.dart';
import '../managers/size_manager.dart';
import '../managers/style_manager.dart';

class CustomSecondaryElevatedBtn extends StatelessWidget {
  final void Function() onPressed;
  final String buttonTxt;
  final double btnWidth;
  const CustomSecondaryElevatedBtn(
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
            const WidgetStatePropertyAll<Color>(ColorManager.backgroundColor),
        overlayColor:
            const WidgetStatePropertyAll<Color>(ColorManager.secondaryColor),
        minimumSize:
            WidgetStatePropertyAll<Size>(Size(btnWidth, SizeManager.s40.sp)),
        shape: WidgetStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(
            side: const BorderSide(color: ColorManager.primaryColor),
            borderRadius:
                BorderRadius.all(Radius.circular(SizeManager.s32.sp)))),
      ),
      child: Text(
        buttonTxt,
        style: StyleManager.descriptionText(color: ColorManager.primaryColor),
      ),
    );
  }
}
