import 'package:flutter/material.dart';

import '../../../../../core/managers/color_manager.dart';
import '../../../../../core/managers/style_manager.dart';


class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;

  final TextInputType keyboardType;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType ,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: StyleManager.mediumText(
              fontSize: 20.0, color: ColorManager.primaryColor),
        ),
      ),
    );
  }
}
