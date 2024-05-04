import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final Color color;
  final widget;
  final text;
  final VoidCallback onPressed;

  const OnboardingPage({
    super.key,
    required this.color,
    required this.onPressed,
    this.widget,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),
            widget,
          ],
        ),
      ),
    );
  }
}