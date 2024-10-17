import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_primary_elevated_btn.dart';
import '../../../../../core/widgets/custom_secondary_elevated_btn.dart';


class ActionButtons extends StatelessWidget {
  final VoidCallback onProceed;

  const ActionButtons({super.key, required this.onProceed});

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
            onPressed: onProceed,
          ),
        ),
      ],
    );
  }
}
