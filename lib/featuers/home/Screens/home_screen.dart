import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import 'package:habitflow/core/widgets/custom_app_bar.dart';
import 'package:habitflow/core/widgets/day_selector.dart';
import 'package:habitflow/featuers/home/components/home_habit_container.dart';

import '../../../core/widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDaySelector(),
            Text("My Habits",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorManager.secondaryColor,
              fontSize: 30
            ),),
            HomeHabitContainer(habitName: "Read 10 pages of a book"),


            
          ],


        ),

      ) ,
bottomNavigationBar: BottomNavigation(),

    );
  }
}
