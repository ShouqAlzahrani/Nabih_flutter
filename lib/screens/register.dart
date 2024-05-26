import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nabih/widgets/bottomNavigationBar.dart';
import 'package:nabih/main.dart';
import 'package:nabih/widgets/MainButton.dart';
import 'done.dart';

final _formKey = GlobalKey<FormState>();
TextEditingController _fullNameController = TextEditingController();
TextEditingController _usernameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _idNumberController = TextEditingController();
TextEditingController _birthDateController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
              child: Form(
                key: _formKey,
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
                    buildTextFormField(
                      controller: _fullNameController,
                      hintText: 'الاسم كامل',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء إدخال الاسم الكامل';
                        }
                        return null;
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
                    buildTextFormField(
                      controller: _usernameController,
                      hintText: 'اسم المستخدم',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء إدخال اسم المستخدم';
                        } else if (value.length < 3) {
                          return 'يجب أن يتكون اسم المستخدم من ٣ أحرف على الأقل';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'البريد الالكتروني',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    buildTextFormField(
                      controller: _emailController,
                      hintText: 'البريد الإلكتروني',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء إدخال البريد الإلكتروني';
                        } else if (!value.contains('@')) {
                          return 'البريد الإلكتروني غير صحيح';
                        }
                        return null;
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
                    buildTextFormField(
                      controller: _idNumberController,
                      hintText: 'رقم الهوية',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء إدخال رقم الهوية';
                        } else if (value.length != 10 ||
                            int.tryParse(value) == null) {
                          return 'رقم الهوية يجب أن يتكون من 10 أرقام';
                        }
                        return null;
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
                    buildTextFormField(
                      controller: _birthDateController,
                      hintText: 'تاريخ الميلاد',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء إدخال تاريخ الميلاد';
                        }
                        return null;
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
                    buildTextFormField(
                      controller: _passwordController,
                      hintText: 'كلمة المرور',
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء إدخال كلمة المرور';
                        } else if (value.length < 8 ||
                            !value.contains(RegExp(r'[A-Za-z]')) ||
                            !value.contains(RegExp(r'[0-9]'))) {
                          return 'كلمة المرور يجب أن تحتوي على 8 أحرف على الأقل، وعلى الأقل حرف ورقم واحد';
                        }
                        return null;
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
                          if (_formKey.currentState!.validate()) {
                            try {
                              final newUser = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text);

                              final userID = newUser.user!.uid;

                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(userID)
                                  .set({
                                'full_name': _fullNameController.text,
                                'username': _usernameController.text,
                                'email': _emailController.text,
                                'id_number': _idNumberController.text,
                                'birth_date': _birthDateController.text,
                                'wallet_balance': 0,
                                'zain': 0,
                                'stc': 0,
                                'mobily': 0,
                              }).onError((e, _) =>
                                      print("Error writing document: $e"));

                              final SharedPreferences sp =
                                  await SharedPreferences.getInstance();
                              sp.setBool('signed_in', true);
                              sp.setString(
                                  'full_name', _fullNameController.text);
                              sp.setString(
                                  'username', _usernameController.text);
                              sp.setString('email', _emailController.text);
                              sp.setString('uid', userID);

                              _fullNameController.clear();
                              _usernameController.clear();
                              _emailController.clear();
                              _idNumberController.clear();
                              _birthDateController.clear();
                              _passwordController.clear();
                              Navigator.pushReplacement<void, void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => Done(),
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
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  TextFormField buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    bool obscureText = false,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(
          // fontSize: 14,
          // letterSpacing: 2.0,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffffffff),
          // fontWeight: FontWeight.w400,
          // fontSize: 10,
        ),
        filled: true,
        fillColor: const Color(0xffF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: TextInputType.text,
      validator: validator,
    );
  }
}
