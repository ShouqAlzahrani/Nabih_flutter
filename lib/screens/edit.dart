import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nabih/widgets/MainButton.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/main.dart';

class DoneTrue extends StatelessWidget {
  const DoneTrue({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/edit.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Image.asset('img/donee.png'),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'تم التنفيذ بنجاح',
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
