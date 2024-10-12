import 'package:flutter/material.dart';

import '../../../core/widgets/custom_arrow_back.dart';

class BoardingAppBar extends StatelessWidget {
  final String numberPage;
  const BoardingAppBar({
    super.key,
    required this.numberPage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomArrowBack(),
        Row(
          children: [
            Text(numberPage),
            const Text('/'),
            const Text('4'),
          ],
        ),
      ],
    );
  }
}
