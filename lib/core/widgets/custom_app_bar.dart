import 'package:flutter/material.dart';
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
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          today.toString(),
          style: const TextStyle(
            color: ColorManager.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title:  Text(
          fullDate,
          style: const TextStyle(
            color: ColorManager.primaryColor,
            fontSize: 18,
          ),
        ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: ColorManager.secondaryColor,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Standard AppBar height
}
