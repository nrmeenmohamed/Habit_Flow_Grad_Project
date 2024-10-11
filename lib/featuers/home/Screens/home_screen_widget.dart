import 'package:flutter/cupertino.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/widgets/day_selector.dart';
import '../components/home_habit_container.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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


    );
  }
}
