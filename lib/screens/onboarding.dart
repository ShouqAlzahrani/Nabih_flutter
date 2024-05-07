import 'package:flutter/material.dart';
import 'package:nabih/main.dart';

import '../widgets/onBoardingWidget.dart';
import 'login.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/edit.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: 350,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'سؤال ١ من ٤ ',
                            style: TextStyle(
                                color: Color(0xff27944a), fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff0B5136),
                                borderRadius: BorderRadius.circular(20)),
                            child: OnboardingPage(
                              color: const Color(0xff0B5136),
                              text: 'الحالة الوظيفية ؟',
                              widget: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'طالب',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'موظف',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'عمل خاص',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'متقاعد',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Container(
                                  //     height: 30,
                                  //     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  //     child: MaterialButton(
                                  //       height: 10,
                                  //       minWidth: double.infinity,
                                  //       onPressed: () {
                                  //         _pageController.nextPage(
                                  //           duration: const Duration(milliseconds: 500),
                                  //           curve: Curves.ease,
                                  //         );
                                  //       },
                                  //       child: const Text(
                                  //         'استمرار',
                                  //         style: TextStyle(color: Color(0xff165d31), fontWeight: FontWeight.bold, fontSize: 16),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'سؤال 2 من 4 ',
                            style: TextStyle(
                                color: Color(0xff27944a), fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff0B5136),
                                borderRadius: BorderRadius.circular(20)),
                            child: OnboardingPage(
                              color: const Color(0xff0B5136),
                              text: 'مستوى التعليم',
                              widget: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'اقل من بكالوريوس',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'بكالوريوس',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'اعلى من بكالوريوس',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'متقاعد',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Container(
                                  //     height: 30,
                                  //     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  //     child: MaterialButton(
                                  //       height: 10,
                                  //       minWidth: double.infinity,
                                  //       onPressed: () {
                                  //         _pageController.nextPage(
                                  //           duration: const Duration(milliseconds: 500),
                                  //           curve: Curves.ease,
                                  //         );
                                  //       },
                                  //       child: const Text(
                                  //         'استمرار',
                                  //         style: TextStyle(color: Color(0xff165d31), fontWeight: FontWeight.bold, fontSize: 16),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'سؤال 3 من 4 ',
                            style: TextStyle(
                                color: Color(0xff27944a), fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff0B5136),
                                borderRadius: BorderRadius.circular(20)),
                            child: OnboardingPage(
                              color: const Color(0xff0B5136),
                              text: 'هدفك مكن انشاء المحفظة ؟',
                              widget: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'للإدخار',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        child: const Text(
                                          'للإستثمار',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   height: 70,
                                  // ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Container(
                                  //     height: 30,
                                  //     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  //     child: MaterialButton(
                                  //       height: 10,
                                  //       minWidth: double.infinity,
                                  //       onPressed: () {
                                  //         _pageController.nextPage(
                                  //           duration: const Duration(milliseconds: 500),
                                  //           curve: Curves.ease,
                                  //         );
                                  //       },
                                  //       child: const Text(
                                  //         'استمرار',
                                  //         style: TextStyle(color: Color(0xff165d31), fontWeight: FontWeight.bold, fontSize: 16),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'سؤال 4 من 4 ',
                            style: TextStyle(
                                color: Color(0xff27944a), fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff0B5136),
                                borderRadius: BorderRadius.circular(20)),
                            child: OnboardingPage(
                              color: const Color(0xff0B5136),
                              text: 'المعرفة الإستثمارية',
                              widget: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          Navigator.pushReplacement<void, void>(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) =>
                                                  Login(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          'منخفضه',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          Navigator.pushReplacement<void, void>(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) =>
                                                  const Login(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          'متوسطة',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2c9945),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: MaterialButton(
                                        height: 10,
                                        minWidth: double.infinity,
                                        onPressed: () {
                                          Navigator.pushReplacement<void, void>(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) =>
                                                  const Login(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          'عالية',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   height: 40,
                                  // ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Container(
                                  //     height: 30,
                                  //     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  //     child: MaterialButton(
                                  //       height: 10,
                                  //       minWidth: double.infinity,
                                  //       onPressed: () {
                                  //         // navigateTo(context, const Auth());
                                  //       },
                                  //       child: const Text(
                                  //         'استمرار',
                                  //         style: TextStyle(color: Color(0xff165d31), fontWeight: FontWeight.bold, fontSize: 16),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
