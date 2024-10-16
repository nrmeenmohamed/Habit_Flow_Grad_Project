import 'package:flutter/material.dart';
import 'package:habitflow/core/widgets/custom_arrow_back.dart';

import '../../../core/widgets/custom_primary_elevated_btn.dart';

import 'new_habit_widget.dart';

class NewHabitScreen extends StatelessWidget {
  const NewHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var habitNameController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: const CustomArrowBack(),
        title: const Text("Add new habit"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
        child: SingleChildScrollView(
          child: NewHabitWidget(habitNameController: habitNameController),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomPrimaryElevatedBtn(onPressed: () {  },
                buttonTxt: 'add new habit', btnWidth: 25,),
    );
  }
}

