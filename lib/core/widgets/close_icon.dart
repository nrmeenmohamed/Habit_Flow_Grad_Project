import 'package:flutter/material.dart';

class CustomCloseIcon extends StatefulWidget {
  const CustomCloseIcon({super.key});
  @override
  State<CustomCloseIcon> createState() => _CustomCloseIconState();
}

class _CustomCloseIconState extends State<CustomCloseIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
          /* write the closing function code here */
        },
        icon: const Icon(
          weight: 50.0,
          Icons.close,
          //color: ColorManager.backgroundColor,
        ));
  }
}
