import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nabih/main.dart';
import 'package:nabih/screens/login.dart';
import 'package:nabih/screens/start.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'register.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key,}) : super(key: key);
  _SplashPageState createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  // late AnimationController _controller;

  afterSplash() async {

    Future.delayed(Duration(milliseconds: 1200)).then((value) async {
      final SharedPreferences sp = await SharedPreferences.getInstance();

      bool _isSignedIn=sp.getBool('signed_in') ?? false;

         _isSignedIn
          ? gotoHomePage()
          : gotoSignInPage();
    });

  }

  gotoHomePage() {

    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) =>
            HomePage(),
      ),
    );
  }


  gotoSignInPage() {
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) =>
            StartPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: const Color(0xff0E1210),
        body: Container(
          color:const Color(0xff0E1210),
          height: double.infinity,
          width: double.infinity,
          // color: Colors.black,
          child: Image.asset('img/splash.gif',  height: double.infinity,
              width: double.infinity,fit:BoxFit.cover),
        ));
  }
  @override
  void initState() {

    super.initState();
    // _controller = AnimationController(
    //   duration: const Duration(milliseconds: 15000),
    //   vsync: this,
    // );
    // _controller.forward();

    Future.delayed(const Duration(seconds: 7), () {
      afterSplash();
    });

  }
  }









