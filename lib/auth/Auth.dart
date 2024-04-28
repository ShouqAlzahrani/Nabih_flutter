import 'package:flutter/material.dart';
import 'package:nabih/MainButton.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/otp.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget _buildPhoneFormField() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: Text(
              '${generateCountryFlag()} +966',
              style: const TextStyle(fontSize: 16, letterSpacing: 1.0),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffFFFFFF)),
              // borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: TextFormField(
              autofocus: true,
              style: const TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
              ),
              decoration: const InputDecoration(
                // border: InputBorder.none,
                fillColor: Color(0xffF5F5F5),
                filled: true,
              ),
              cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter yout phone number!';
                } else if (value.length < 10) {
                  return 'Too short for a phone number!';
                }
                return null;
              },
              onSaved: (value) {
                // phoneNumber = value!;
              },
            ),
          ),
        ),
      ],
    );
  }

  String generateCountryFlag() {
    String countryCode = 'SA';

    String flag = countryCode.toUpperCase().replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
        );

    return flag;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0E1210),
        body: Container(
            width: double.infinity,
            color: const Color(0xff0E1210),
            // decoration: const BoxDecoration(
            // image: DecorationImage(
            // image: AssetImage('img/login.png'),
            // fit: BoxFit.cover,
            // ),
            // ),
            child: SafeArea(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      const Text(
                        'ابدأ رحلتك التعليمية مع نبيه ',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      const Text(
                        'سجل الدخول او انشئ حساب جديد',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildPhoneFormField(),
                      const SizedBox(
                        height: 30,
                      ),
                      MainButton(
                          text: 'تحقق',
                          onTap: () {
                            Navigator.pushReplacement<void, void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => const Otp(),
                              ),
                            );
                          }),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        'أو التسجيل من خلال',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset('img/Social.png')
                    ],
                  ),
                ),
              ],
            ))));
  }
}
