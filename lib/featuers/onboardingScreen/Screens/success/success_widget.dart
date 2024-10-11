import 'package:flutter/cupertino.dart';

import '../../components/slider.dart';
import '../../components/success_component.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CustomSlider(progressPercent: 1.0),
        SizedBox(height: 100,),
        CustomSuccessComponent()
      ],
    );
  }
}
