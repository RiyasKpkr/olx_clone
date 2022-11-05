import 'package:flutter/material.dart';
import 'package:olx_clone/screens/onboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnboardScreen(),
      ),
    );
  }
}
