import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabih/MainButton.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1210),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'التوصيات',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.white,
                        ))
                  ],
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/Standardd.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'فرصة شراء',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            const Text(
                              'الان  .  stc',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset('img/sbs.svg')
                          ],
                        ),
                        const Text(
                          'يُوصى بشراء سهم شركة STC بناءً على الاتجاه الصاعد الواضح في الرسم البياني.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        MainButton(height: 30, text: 'شِراء', onTap: () {})
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/Standardd.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'فرصة بيع',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            const Text(
                              'الان  .  zain',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset('img/sbs.svg')
                          ],
                        ),
                        const Text(
                          'يُوصى بشراء سهم شركة STC بناءً على الاتجاه الصاعد الواضح في الرسم البياني.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        MainButton(
                          height: 30,
                          text: 'بيع',
                          color: Colors.red,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/Standardd.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'فرصة شراء',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            const Text(
                              'الان  .  stc',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset('img/sbs.svg')
                          ],
                        ),
                        const Text(
                          'يُوصى بشراء سهم شركة STC بناءً على الاتجاه الصاعد الواضح في الرسم البياني.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        MainButton(height: 30, text: 'شِراء', onTap: () {})
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
