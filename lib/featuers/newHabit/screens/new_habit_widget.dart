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
        const SizedBox(height: 40,),
        CustomTextField(hintText: "Habit Name", controller: habitNameController),
        const SizedBox(height: 70,),
        const Text("Set Periodicity",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),),
        const SizedBox(height: 10,),
        const CustomPeriodicitySelector(),
        const SizedBox(height: 30,),
        const Text("When should we remind you?",style:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
        ) ,),
        const SizedBox(height: 20,),
        const NewHabitTimeReminder(),
        const SizedBox(height: 20,),

      ],
    );
  }
}
