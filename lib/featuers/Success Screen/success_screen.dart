import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitflow/core/widgets/custom_arrow_back.dart';
import 'package:habitflow/featuers/Onboarding%20Information%20Screen/components/slider.dart';
import 'package:habitflow/featuers/Success%20Screen/components/success_component.dart';

import '../../core/widgets/custom_primary_elevated_btn.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: CustomArrowBack(),
      ),
      body: Column(
        children: [

          CustomSlider(progressPercent: 1.0),
          SizedBox(height: 100,),
          CustomSuccessComponent()
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Expanded(

        child:
        CustomPrimaryElevatedBtn(onPressed: () {  },
          buttonTxt: 'Start Tracking',
          btnWidth: 30,),),
    );
  }
}
