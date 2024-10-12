import 'package:flutter/material.dart';
import 'package:habitflow/featuers/onboardingScreen/components/onboarding_text.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingText(),
    );
  }
}
