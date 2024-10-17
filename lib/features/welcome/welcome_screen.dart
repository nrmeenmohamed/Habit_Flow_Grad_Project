import 'package:flutter/material.dart';

import 'views/components/onboarding_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OnboardingText(), // الآن فقط الزر الأخضر في OnboardingText
        ],
      ),
    );
  }
}
