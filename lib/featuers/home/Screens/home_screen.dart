import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_bottom_nav_bar.dart';
import 'home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: HomeScreenWidget(),

      ) ,
bottomNavigationBar: BottomNavigation(),

    );
  }
}

