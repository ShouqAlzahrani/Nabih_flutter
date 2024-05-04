import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool hasCircularBorder;
  final double width;
  final double height;
  final double int;
  final color;

  const MainButton({
    super.key,
    required this.text,
    required this.onTap,
    this.hasCircularBorder = false,
    this.width = double.infinity,
    this.int = 10,
    this.height = 50,
    this.color = const Color(0xff0d5536),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 130,
        height: height,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(int),
            color: color,
          ),
          child: MaterialButton(
            onPressed: onTap,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
