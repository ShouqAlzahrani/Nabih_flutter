// ignore_for_file: unused_field, unused_element, deprecated_member_use, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabih/chat.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/information.dart';
import 'package:nabih/screens/Paymentcards.dart';
import 'package:nabih/screens/Recommendations.dart';
import 'package:nabih/screens/Setting.dart';
import 'package:nabih/screens/TransactionLog.dart';

/// Flutter code sample for [BottomNavigationBar].

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List _widgetOptions = <Widget>[
    Scaffold(
      body: SafeArea(
          child: Container(
        color: const Color(0xff0E1210),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'السوق',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('img/Group4.png'),
          ],
        ),
      )),
    ),
    const Home(),
    const Wallet(),
    const Setting(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // _selectedIndex = index;
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 1, 19, 14),
        unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        selectedIconTheme: const IconThemeData(color: Colors.yellow),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/iconnn.svg',
              color: _selectedIndex == 0 ? Colors.white : const Color(0xff30A146),
            ),
            label: 'السوق',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/icon1.svg',
              color: _selectedIndex == 1 ? Colors.white : const Color(0xff30A146),
            ),
            label: 'المفضلة',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/icon2.svg',
              color: _selectedIndex == 2 ? Colors.white : const Color(0xff30A146),
            ),
            label: 'الحجوزات',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/icon3.svg',
              color: _selectedIndex == 3 ? Colors.white : const Color(0xff30A146),
            ),
            label: 'الحساب',
          ),
        ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff0F0F0F),
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

class Wallet extends StatelessWidget {
  const Wallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xff30a146),
            onPressed: () {
              navigateTo(context, const Chat());
            },
            child: SvgPicture.asset('img/chat.svg')),
        body: Container(
            width: double.infinity,
            color: const Color(0xff0E1210),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'المجتمع ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Image.asset('img/person.png'),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shouq Alzahrani',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              'smalzahrani@',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      color: const Color(0xffD8C97D).withOpacity(0.80),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 60),
                        child: Text(
                          'تداول السعودية تعلن رسميا : يوم الخميس ٢٢ فبراير إجازة يوم التاسيس ، ويستأنف التداول بعد الإجازة يوم الاحد ٢٥ فبراير',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        SvgPicture.asset('img/cc.svg'),
                        const SizedBox(width: 30),
                        Expanded(
                            child: Row(
                          children: [
                            const Text(
                              '3.987',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset('img/f.svg'),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            const Text(
                              '5.259',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset('img/ret.svg'),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            const Text(
                              '1.240',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset('img/Vector.svg'),
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Image.asset('img/pre.png'),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kefaya Altaezi',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              'kealtaezi@',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      color: const Color(0xffD8C97D).withOpacity(0.80),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 60),
                        child: Text(
                          'اسهم اليوم في تصاعد ',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        SvgPicture.asset('img/cc.svg'),
                        const SizedBox(width: 30),
                        Expanded(
                            child: Row(
                          children: [
                            const Text(
                              '3.987',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset('img/f.svg'),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            const Text(
                              '5.259',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset('img/ret.svg'),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            const Text(
                              '1.240',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset('img/Vector.svg'),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff0E1210),
        child: SafeArea(
          child: Align(
            alignment: Alignment.topRight,
            child: Column(
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
                InkWell(
                    onTap: () {
                      navigateTo(context, const Paymentcards());
                    },
                    child: Image.asset('img/Paymentcards.png')),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        navigateTo(context, const Recommendations());
                      },
                      child: Container(
                          color: const Color(0xffD8C97D).withOpacity(0.80),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  SvgPicture.asset('img/ja.svg'),
                                  const Text('التوصيات',
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        navigateTo(context, const TransactionLog());
                      },
                      child: Container(
                          color: const Color(0xffD8C97D).withOpacity(0.80),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  SvgPicture.asset('img/arrow.svg'),
                                  const Text('العمليات',
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.only(left: 14, right: 38),
                  child: Row(
                    children: [
                      Text('التوصيات',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    navigateTo(context, const Information());
                  },
                  child: Image.asset(
                    'img/Group11.png',
                    width: double.infinity,
                  ),
                ),
                Image.asset(
                  'img/Group2.png',
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
