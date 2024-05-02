import 'package:flutter/material.dart';
import 'package:nabih/MainButton.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/register.dart';
import 'package:nabih/screens/login.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  // @override
  Widget _buildPinCodeFields(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.white,
      textStyle: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.number,
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          borderWidth: 1,
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          activeFillColor: Colors.white,
          selectedColor: Colors.white,
          inactiveFillColor: Colors.white,
          selectedFillColor: Colors.white,
          disabledColor: Colors.white),
      animationDuration: const Duration(milliseconds: 300),
      // backgroundColor: Colors.white,
      onCompleted: (submitedCode) {
        // otpCode = submitedCode;
        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff0E1210),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'التحقق من ال OTP',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "تحقق من رسائل الـ SMS، لقد قمنا بإرسال الرمز الى \nالرقم التالي ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: '966xxxxxxxxx+',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              _buildPinCodeFields(context),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'لم يصلك الرمز؟ إعادة الإرسال',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              const Text(
                '2:00',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MainButton(
                  text: 'تحقق',
                  onTap: () {
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Login(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
