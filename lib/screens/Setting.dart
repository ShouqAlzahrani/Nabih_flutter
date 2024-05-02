import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/screens/edit.dart';
import 'package:nabih/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  const Setting({
    super.key,
  });

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final _controller08 = ValueNotifier<bool>(false);
  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff0E1210),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'الحساب',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset('img/person.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'أهلاً الشيخة شوق!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SvgPicture.asset('img/Vectorsa.svg'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'الحساب',
                      style: TextStyle(
                        color: Color(0xff024232),
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    navigateTo(context, const Edit());
                  },
                  child: const Text(
                    'تعديل المعلومات الشخصية',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
                const Text(
                  'تغيير كلمة المرور',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SvgPicture.asset('img/Vector11.svg'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'الاشعارات',
                      style: TextStyle(
                        color: Color(0xff024232),
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'الاشعارات',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Spacer(),
                    AdvancedSwitch(
                      inactiveColor: const Color(0xffD9D9D9),
                      activeColor: const Color(0xff024232),
                      width: 48,
                      height: 24,
                      controller: _controller08,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'التحديثات',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Spacer(),
                    AdvancedSwitch(
                      inactiveColor: const Color(0xffD9D9D9),
                      activeColor: const Color(0xff024232),
                      width: 48,
                      height: 24,
                      controller: _controller08,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SvgPicture.asset('img/Vector12.svg'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'أخرى',
                      style: TextStyle(
                        color: Color(0xff024232),
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'الوضع الداكن',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Spacer(),
                    AdvancedSwitch(
                      inactiveColor: const Color(0xffD9D9D9),
                      activeColor: const Color(0xff024232),
                      width: 48,
                      height: 24,
                      controller: _controller08,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'اللغة',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('img/lung.svg'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'الدعم الفني',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('img/call.svg'),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    openLogoutDialog(context);
                  }
                  ,
                  child: Row(
                    children: [
                      const Text(
                        'تسجيل الخروج',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      const Spacer(),
                      Icon(Icons.logout,
                      color: Color(0xff0d5536),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
  void openLogoutDialog (context) {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('هل انت متأكد ؟'),
            actions: [
              TextButton(

                child: Text('لا',style: TextStyle(color: Color(0xff0d5536),),),
                onPressed: ()=> Navigator.pop(context),
              ),
              TextButton(
                child: Text('نعم',style: TextStyle(color: Color(0xff0d5536),),),
                onPressed: ()async{
                  Navigator.pop(context);
                  // await   AppService().sendPostRequest(context.read<SignInBloc>().uid!,"تم تسجيل الخروج",4);
                  final SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.clear();
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Login()), (route) => false);


                },
              )
            ],
          );
        }
    );
  }

}
