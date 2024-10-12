import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitflow/core/widgets/custom_arrow_back.dart';
import 'package:habitflow/featuers/onboardingScreen/Screens/success/success_widget.dart';

import '../../../../core/widgets/custom_primary_elevated_btn.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: CustomArrowBack(),
      ),
      body: SuccessWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomPrimaryElevatedBtn(onPressed: () {
        Navigator.pushNamed(context, "homeScreen");
      },
        buttonTxt: 'Start Tracking',
        btnWidth: 30,),
    );
  }
}

