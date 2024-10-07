import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/managers/color_manager.dart';
import '../../core/managers/style_manager.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;

  const CustomTextField({
    required this.hintText,
    required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
      child: TextField(
        controller: this.controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: StyleManager.mediumText(fontSize: 20.0,color: ColorManager.primaryColor),
        ),
      ),
    );
  }
}
