import 'package:flutter/material.dart';
import 'package:habitflow/featuers/newHabit/screens/new_habit_screen.dart';

import '../managers/color_manager.dart';

class BottomNavigation extends StatefulWidget {
   BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int CurrentIndex=0;

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex: CurrentIndex,
      items: [

        BottomNavigationBarItem(

          icon: const Icon(Icons.home),
          label: "Home Screen",

          backgroundColor: ColorManager.secondaryColor,
        ),
        BottomNavigationBarItem(

          icon: FloatingActionButton(onPressed: (){
            Navigator.pushNamed(context, "newHabitScreen");
          },
            child: Icon(Icons.add,color: Colors.white,),
            backgroundColor: ColorManager.secondaryColor,


          ),
          label: ""

        ),

        BottomNavigationBarItem(
          icon: const Icon(Icons.bar_chart),
          label: "Chart",
          backgroundColor: ColorManager.secondaryColor,
        ),
      ],
      onTap: (value){
        setState(() {
          CurrentIndex=value;
        });
      },
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
