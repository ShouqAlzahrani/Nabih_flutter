import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabih/firebase_options.dart';
import 'package:nabih/screens/Setting.dart';
import 'package:nabih/screens/splash.dart';
import 'package:nabih/screens/start.dart';
import 'package:nabih/widgets/bottomNavigationBar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
      ),
      home:  SplashPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  TextStyle optionStyle = const TextStyle(
      fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff30A146));
  final List<Widget> _children = [
    const market(),
    const Home(),
    const Wallet(),
    const Setting(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_currentIndex]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xff0E1210),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xff30A146),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'img/iconnn.svg',
                color:
                    _currentIndex == 0 ? Colors.white : const Color(0xff30A146),
              ),
              label: 'السوق',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'img/icon1.svg',
                color:
                    _currentIndex == 1 ? Colors.white : const Color(0xff30A146),
              ),
              label: 'المحفظة',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'img/icon2.svg',
                color:
                    _currentIndex == 2 ? Colors.white : const Color(0xff30A146),
              ),
              label: 'المجتمع',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'img/icon3.svg',
                color:
                    _currentIndex == 3 ? Colors.white : const Color(0xff30A146),
              ),
              label: 'الحساب',
            ),
          ],
        ),
      ),
    );
  }
}

class market extends StatelessWidget {
  const market({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: const Color(0xff0E1210),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
             Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Text(
                      'السوق',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 8)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('img/Group4.png'),
          ],
        ),
      )),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final Color color;
  final widget;
  final text;
  final VoidCallback onPressed;

  const OnboardingPage({
    super.key,
    required this.color,
    required this.onPressed,
    this.widget,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),
            widget,
          ],
        ),
      ),
    );
  }
}
