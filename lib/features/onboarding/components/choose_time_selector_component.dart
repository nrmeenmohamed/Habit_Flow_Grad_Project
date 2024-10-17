import 'package:flutter/material.dart';

import '../../../core/managers/color_manager.dart';

class ChooseTimeSelector extends StatefulWidget {
  const ChooseTimeSelector({super.key});

  @override
  ChooseTimeSelectorState createState() => ChooseTimeSelectorState();
}

class ChooseTimeSelectorState extends State<ChooseTimeSelector> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(45),
        decoration: BoxDecoration(
          color: ColorManager.accentColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: _isSelected ? ColorManager.primaryColor : Colors.transparent,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '12:00',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _isSelected ? ColorManager.secondaryColor : Colors.white,
              ),
            ),
            Text(
              'AM',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _isSelected ? ColorManager.secondaryColor : Colors.white,
              ),
            ),
            const Text(
              'Morning',
              style: TextStyle(
                fontSize: 16,
                color: ColorManager.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
