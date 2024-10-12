import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/size_manager.dart';
import 'package:habitflow/core/managers/style_manager.dart';
import 'package:intl/intl.dart';

import '../managers/color_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String today = DateFormat('EEEE').format(now);
    String fullDate = DateFormat('d MMMM').format(now);

    return AppBar(
      leadingWidth: MediaQuery.of(context).size.width / 4,
      titleSpacing: 20.0,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Center(
          child: Text(
            today,
            style: StyleManager.smallTitleText(
              color: ColorManager.primaryColor,
              fontSize: SizeManager.s24.sp,
            ),
          ),
        ),
      ),
      title: Text(fullDate,
          style: StyleManager.smallTitleText(
            color: ColorManager.primaryColor,
          )),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.account_circle,
            color: ColorManager.primaryColor,
            size: 35,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Standard AppBar height
}
