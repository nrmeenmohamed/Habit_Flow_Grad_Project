import 'package:flutter/cupertino.dart';

import '../../../core/widgets/periodicity_selector.dart';
import '../../onboardingScreen/components/TextField.dart';
import '../components/new_habit_time_reminder.dart';

class NewHabitWidget extends StatelessWidget {
  const NewHabitWidget({
    super.key,
    required this.habitNameController,
  });

  final TextEditingController habitNameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start
      ,
      children: [
        SizedBox(height: 40,),
        CustomTextField(hintText: "Habit Name", controller: habitNameController),
        SizedBox(height: 70,),
        Text("Set Periodicity",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10,),
        CustomPeriodicitySelector(),
        SizedBox(height: 30,),
        Text("When should we remind you?",style:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
        ) ,),
        SizedBox(height: 20,),
        NewHabitTimeReminder(),
        SizedBox(height: 20,),

      ],
    );
  }
}
