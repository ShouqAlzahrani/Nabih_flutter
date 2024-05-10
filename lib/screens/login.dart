import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nabih/widgets/MainButton.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'done.dart';
import '../main.dart';
import 'register.dart';

final _formKey = GlobalKey<FormState>();

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/edit.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: const Text(
                            'ابدأ رحلتك التعليمية مع نبيـــه ',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Text(
                          'البريد الالكترومي',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        TextFormField(
                          controller: _emailController,
                          autofocus: true,
                          style: const TextStyle(
                            fontSize: 18,
                            letterSpacing: 2.0,
                          ),
                          decoration: const InputDecoration(
                            hintText: '',
                            // border: InputBorder.none,
                            // fillColor: Color(0xffF5F5F5),
                            filled: true,
                          ),
                          // cursorColor: Colors.black,s
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'e';
                            } else if (value.length < 10) {
                              return 'e';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            // phoneNumber = value!;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'كلمة المرور',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        TextFormField(
                          controller: _passwordController,
                          autofocus: true,
                          obscureText: true,
                          style: const TextStyle(
                            fontSize: 18,
                            letterSpacing: 2.0,
                          ),
                          decoration: const InputDecoration(
                            hintText: '',
                            // border: InputBorder.none,
                            // fillColor: Color(0xffF5F5F5),
                            filled: true,
                          ),
                          // cursorColor: Colors.black,s
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'e';
                            } else if (value.length < 10) {
                              return 'e';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            // phoneNumber = value!;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 220,
                              height: 50,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff0d5536),
                                ),
                                child: MaterialButton(
                                  onPressed: () async {
                                    print('login attempt');
                                    try {
                                      User userDetails = (await FirebaseAuth
                                              .instance
                                              .signInWithEmailAndPassword(
                                                  email: _emailController.text,
                                                  password:
                                                      _passwordController.text))
                                          .user!;

                                      if (userDetails != null) {
                                        await FirebaseFirestore.instance
                                            .collection('users')
                                            .doc(userDetails.uid)
                                            .get()
                                            .then(
                                                (DocumentSnapshot snap) async {
                                          final SharedPreferences sp =
                                              await SharedPreferences
                                                  .getInstance();
                                          sp.setString(
                                              'full_name', snap['full_name']);
                                          sp.setString('uid', userDetails.uid);
                                          sp.setString(
                                              'username', snap['username']);
                                          sp.setString(
                                              'email', userDetails.email!);
                                          sp.setBool('signed_in', true);
                                          Navigator.pushReplacement<void, void>(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) =>
                                                  Done(),
                                            ),
                                          );
                                        });
                                      } else {
                                        print('failed ');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                                'فشل تسجيل الدخول.يرجي مراجعة البيانات'),
                                            // backgroundColor: Colors.red, // Or any suitable error color
                                          ),
                                        );
                                      }
                                    } on FirebaseAuthException catch (e) {
                                      print('failed ');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'فشل تسجيل الدخول.يرجي مراجعة البيانات'),
                                          // backgroundColor: Colors.red, // Or any suitable error color
                                        ),
                                      );
                                    }

                                    // });
                                  },
                                  child: Text(
                                    'تسجيل الدخول',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(1),
                            child: GestureDetector(
                              child: Text(
                                'ليس لديك حساب ؟',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: const Text(
                            'أو التسجيل من خلال',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w400,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(child: Image.asset('img/Social.png'))
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
