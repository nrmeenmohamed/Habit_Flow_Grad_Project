import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/style_manager.dart';



class CustomSuccessComponent extends StatelessWidget {
  const CustomSuccessComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 200.w,
      child: Column(
        children: [
          const Image(image: AssetImage(AssetsManager.allSet)),
          Text(
            'You are all set ',
            style:
                StyleManager.largeTitleText(color: ColorManager.primaryColor),
          )
        ],
      ),
    );
  }
}
