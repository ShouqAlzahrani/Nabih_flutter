import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nabih/MainButton.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/main.dart';
import 'package:nabih/register.dart';

final _formKey = GlobalKey<FormState>();
TextEditingController _fullNameController = TextEditingController();
TextEditingController _usernameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _idNumberController = TextEditingController();
TextEditingController _birthDateController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1210),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'تعديل',
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
                    const SizedBox(
                      height: 40,
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
                      'الاسم الكامل',
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
                      'البريد الالكترومي',
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
                      'رقم الهوية',
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
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: MainButton(
                        text: 'تعديل',
                        onTap: () {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => const EditDone(),
                            ),
                          );
                        },
                        color: const Color(0xffA27D27).withOpacity(0.99),
                      ),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class EditDone extends StatelessWidget {
  const EditDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff0E1210),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/edit.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset('img/done.png'),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'هل انت متأكد من إتمام هذه التعديلات ؟ ',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButton(
                    text: 'نعم',
                    onTap: () {
                      navigateTo(context, const DoneTrue());
                    },
                    color: const Color(0xffA27D27).withOpacity(0.99),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MainButton(
                    text: 'لا',
                    onTap: () {},
                    color: const Color(0xffA27D27).withOpacity(0.99),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DoneTrue extends StatelessWidget {
  const DoneTrue({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/edit.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Image.asset('img/donee.png'),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'تم التنفيذ بنجاح',
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
