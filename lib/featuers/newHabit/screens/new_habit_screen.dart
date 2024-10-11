import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitflow/core/widgets/custom_arrow_back.dart';
import 'package:habitflow/core/widgets/periodicity_selector.dart';
import 'package:habitflow/featuers/newHabit/components/new_habit_time_reminder.dart';
import 'package:habitflow/featuers/onboardingScreen/components/TextField.dart';

import '../../../core/widgets/custom_primary_elevated_btn.dart';
import '../../../core/widgets/day_selector.dart';

class NewHabitScreen extends StatelessWidget {
  const NewHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var habitNameController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: CustomArrowBack(),
        title: Text("Add new habit"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
        child: SingleChildScrollView(
          child: Column(
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
          ),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Expanded(
        child:
           CustomPrimaryElevatedBtn(onPressed: () {  },
          buttonTxt: 'add new habit', btnWidth: 25,),),
    );
  }
}
