import 'package:flutter/material.dart';
class CustomArrowBack extends StatelessWidget {
  const CustomArrowBack({super.key});
  @override
  Widget build(BuildContext context) {
      return
       IconButton(
      icon: const Icon(Icons.arrow_back,),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
