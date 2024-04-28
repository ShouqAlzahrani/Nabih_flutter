import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/main.dart';
import 'package:nabih/screens/onboarding.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/onboarding.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement<void, void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => OnboardingScreen(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'تخطي',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  'لماذا نبيه ؟ ',
                  style: TextStyle(color: Colors.white, fontSize: 49),
                ),
                const Text(
                  ' نبيــه منصة مبتكرة تساعد المبتدئين على فهم \nالأسواق المالية واتخاذ القرارات الاستثمارية\n بطريقة سهلة وذكية.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 90,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
