import 'package:flutter/material.dart';

class Paymentcards extends StatelessWidget {
  const Paymentcards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1210),
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'المحفظة ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Image.asset('img/Paymentcards.png'),
              Image.asset('img/cal.png'),
            ],
          ),
        ],
      )),
    );
  }
}
