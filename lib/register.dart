
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nabih/MainButton.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/main.dart';
import 'package:nabih/widgets/bottomNavigationBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'done.dart';

final _formKey = GlobalKey<FormState>();
TextEditingController _fullNameController = TextEditingController();
TextEditingController _usernameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _idNumberController = TextEditingController();
TextEditingController _birthDateController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/edit.png'),
              fit: BoxFit.cover,
            ),
          ),
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
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'التسجيل',
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
                      'الاسم كامل',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    TextFormField(
                      controller: _fullNameController,
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
                      'الاسم المستخدم',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    TextFormField(
                      controller: _usernameController,
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
                      'رقم الهوية',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    TextFormField(
                      controller: _idNumberController,
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
                      'تاريخ الميلاد',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    TextFormField(
                      controller: _birthDateController,
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
                      child: MainButton(
                          text: 'تسجيل',
                          onTap: () async {
                            try {
                              final newUser = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text);

                              final userID = newUser.user?.uid;

                              FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(userID)
                                  .set({
                                'full_name': _fullNameController.text,
                                'username': _usernameController.text,
                                'email': _emailController.text,
                                'id_number': _idNumberController.text,
                                'birth_date': _birthDateController.text,
                                'wallet_balance': 0,
                              }).onError((e, _) =>
                                      print("Error writing document: $e"));

                              final SharedPreferences sp =
                                  await SharedPreferences.getInstance();
                              sp.setBool('signed_in', true);
                              sp.setString('full_name', _fullNameController.text);
                              sp.setString('username', _usernameController.text);
                              sp.setString('email', _emailController.text);
                              sp.setString('uid', userID!);

                              Navigator.pushReplacement<void, void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      Done(),
                                ),
                              );
                            } on FirebaseAuthException catch (e) {
                              print('Failed with error code: ${e.code}');
                              if (e.code == "email-already-in-use") {
                                Fluttertoast.showToast(
                                  msg: 'هذا البريد موجود من قبل',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 2,
                                  backgroundColor: Colors.black54,
                                  textColor: Colors.white,
                                );
                              }
                              print(e.message);
                            }

                            // Store additional user data in Firestore or Realtime Database
                            //   await FirebaseFirestore.instance.collection('users').doc(_idNumberController.text).set({
                            //   'full_name': _fullNameController.text,
                            //   'username': _usernameController.text,
                            //   'email': _emailController.text,
                            //   'id_number': _idNumberController.text,
                            //   'birth_date': _birthDateController.text,
                            // });
                          }),
                    ),

                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
