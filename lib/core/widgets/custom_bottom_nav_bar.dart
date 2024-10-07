import 'package:flutter/material.dart';

import '../managers/color_manager.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorManager.accentColor,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
              color: ColorManager.secondaryColor,
            ),
            const FloatingAddButton(),
            IconButton(
              icon: const Icon(Icons.bar_chart),
              onPressed: () {},
              color: ColorManager.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

class FloatingAddButton extends StatelessWidget {
  const FloatingAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ColorManager.primaryColor,
      elevation: 5.0,
      child: const Icon(
        Icons.add,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}
