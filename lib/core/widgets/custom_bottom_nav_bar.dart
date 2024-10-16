import 'package:flutter/material.dart';

import '../managers/color_manager.dart';

class BottomNavigation extends StatefulWidget {
   const BottomNavigation({super.key});

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

        const BottomNavigationBarItem(

          icon: Icon(Icons.home),
          label: "Home Screen",

          backgroundColor: ColorManager.secondaryColor,
        ),
        BottomNavigationBarItem(

          icon: FloatingActionButton(onPressed: (){
            Navigator.pushNamed(context, "newHabitScreen");
          },
            backgroundColor: ColorManager.secondaryColor,
            child: const Icon(Icons.add,color: Colors.white,),


          ),
          label: ""

        ),

        const BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
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
      onPressed: () {

      },
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
