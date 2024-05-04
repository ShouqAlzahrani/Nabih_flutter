import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabih/screens/chat.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/screens/Recommendations.dart';
import 'package:nabih/screens/Setting.dart';
import 'package:nabih/screens/TransactionLog.dart';
import 'package:nabih/screens/assetDetaisl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/edit.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List _widgetOptions = <Widget>[
    Scaffold(
      body: Container(
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
      ),
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
        unselectedLabelStyle:
            const TextStyle(color: Colors.white, fontSize: 14),
        selectedIconTheme: const IconThemeData(color: Colors.yellow),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/iconnn.svg',
              color:
                  _selectedIndex == 0 ? Colors.white : const Color(0xff30A146),
            ),
            label: 'السوق',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/icon1.svg',
              color:
                  _selectedIndex == 1 ? Colors.white : const Color(0xff30A146),
            ),
            label: 'المفضلة',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/icon2.svg',
              color:
                  _selectedIndex == 2 ? Colors.white : const Color(0xff30A146),
            ),
            label: 'الحجوزات',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'img/icon3.svg',
              color:
                  _selectedIndex == 3 ? Colors.white : const Color(0xff30A146),
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
                        Column(
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('img/Standard.png'), // Replace with your asset path
                          fit: BoxFit.cover, // Adjust as needed
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 60),
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
                        Column(
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('img/Standard.png'), // Replace with your asset path
                          fit: BoxFit.cover, // Adjust as needed
                        ),
                      ),
                      width: double.infinity,
                      // color: const Color(0xffD8C97D).withOpacity(0.80),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 60),
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

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = true;
  double? walletBalance = 15;
  int stcAsset=0;
  int zainAsset=0;
  int mobilyAsset=0;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 0), () async {
      walletBalance = await readWalletBalance();

      setState(() {});
    });
  }

  Future<double?> readWalletBalance() async {
    try {
      final SharedPreferences sp = await SharedPreferences.getInstance();
      final docRef = FirebaseFirestore.instance
          .collection('users')
          .doc(sp.getString('uid'));
      final docSnapshot = await docRef.get();

      if (docSnapshot.exists) {
        final data = docSnapshot.data();
        if (data != null && data.containsKey('wallet_balance')) {
          stcAsset=data['stc'];
          zainAsset=data['zain'];
          mobilyAsset=data['mobily'];
          return data['wallet_balance']!
              .toDouble(); // Assuming the field is a String
        } else {
          print("Field wallet_balance not found in document");
          return 0;
        }
      }
    } catch (error) {
      print("Error reading data: $error");
      return 0;
    }
  }

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
                Container(
                  child: Stack(
                    children: [
                      // Background image
                      Image.asset("img/paymentCardsMain.png",
                          fit: BoxFit.cover),
                      // Text positioned at top right
                      Positioned(
                        top: 50,
                        right: 25,
                        child: Text(
                          walletBalance!.toStringAsFixed(2) + " ر.س ",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                      // Icon button positioned at bottom left
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: IconButton(
                          icon: Container(
                            // Set a fixed width and height to make it square
                            width: 25,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: Color(
                                  0xff0d5536), // Set background color to green
                              shape: BoxShape
                                  .rectangle, // Ensure rectangular shape
                            ),
                            child: Icon(
                              Icons.add, // Replace with your desired icon
                              color: Colors
                                  .white, // Adjust icon color for better visibility on green background
                            ),
                          ),
                          onPressed: () {
                            showMyBottomSheet(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left :32.0,right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          navigateTo(context, const Recommendations());
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0), // Optional: rounded corners
                              gradient: LinearGradient(
                                colors: [Color(0xffD8C97D),Color(0xffA27D27)], // Gold gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color
                                  spreadRadius: 2.0, // Adjust shadow spread
                                  blurRadius: 4.0, // Adjust shadow blur
                                  offset: Offset(0, 1), // Adjust shadow offset
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0), // Optional: rounded corners
                              gradient: LinearGradient(
                                colors: [Color(0xffD8C97D),Color(0xffA27D27)], // Gold gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color
                                  spreadRadius: 2.0, // Adjust shadow spread
                                  blurRadius: 4.0, // Adjust shadow blur
                                  offset: Offset(0, 1), // Adjust shadow offset
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.only(left: 14, right: 38),
                  child: Row(
                    children: [
                      Text('اسهمي',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          )),
                      Spacer(),
                      // IconButton(
                      //  icon:Icon( Icons.add),
                      //   color: Colors.white,
                      //   onPressed: (){                    navigateTo(context,  CounterScreen(price: 10,walletBalance: walletBalance!,));
                      //   },
                      // )
                    ],
                  ),
                ),
                ListTile(
                  leading: Image.asset('img/Group1.png',),
                  title: Text('STC',style: TextStyle(color: Colors.white),),
                  subtitle: Text('STC Corp',style: TextStyle(color: Colors.white70),),
                  trailing: Text(stcAsset.toStringAsFixed(2) + ' سهم ',style: TextStyle(color: Colors.white,fontSize: 18),),
                    onTap: () {
          navigateTo(context, AssetDetails(quantity: stcAsset,
          price: 40,
          walletBalance: walletBalance!,
          asset: 1));
          },),
                ListTile(
                  leading: Image.asset('img/Group3.png',),
                  title: Text('Zain',style: TextStyle(color: Colors.white),),
                  subtitle: Text('Zain Corp',style: TextStyle(color: Colors.white70),),
                  trailing: Text(zainAsset.toStringAsFixed(2) + ' سهم ',style: TextStyle(color: Colors.white,fontSize: 18),),
                    onTap: () {
          navigateTo(context, AssetDetails(quantity: zainAsset,
          price: 25,
          walletBalance: walletBalance!,
          asset: 2));
          },),
                ListTile(
                  leading: Image.asset('img/Group2.png',),
                  title: Text('Mobily',style: TextStyle(color: Colors.white),),
                  subtitle: Text('Mobily Corp',style: TextStyle(color: Colors.white70),),
                  trailing: Text(mobilyAsset.toStringAsFixed(2) + ' سهم ',style: TextStyle(color: Colors.white,fontSize: 18),),
                onTap: () {
                  navigateTo(context, AssetDetails(quantity: mobilyAsset,
                      price: 20,
                      walletBalance: walletBalance!,
                      asset: 3));
                },
                ),
                // InkWell(
                //   onTap: () {
                //    r navigateTo(context, const Information());
                //   },
                //   child: Image.asset(
                //     'img/.png',
                //     width: doublGroup11e.infinity,
                //   ),
                // ),
                // Image.asset(
                //   'img/Group2.png',
                //   width: double.infinity,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showMyBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        child: AccountRechargeSheet(),
      ),
    );
  }
}

class AccountRechargeSheet extends StatefulWidget {
  const AccountRechargeSheet({Key? key}) : super(key: key);

  @override
  State<AccountRechargeSheet> createState() => _AccountRechargeSheetState();
}

class _AccountRechargeSheetState extends State<AccountRechargeSheet> {
  String enteredNumber = "";

  void addToNumber(String digit) {
    setState(() {
      enteredNumber += digit;
    });
  }

  void clearNumber() {
    setState(() {
      enteredNumber = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          MediaQuery.of(context).size.height * 0.4, // Adjust height as needed
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/new.png"), // Replace with your image path
           fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
// Entered number display
          Positioned(
            top: 20,
            left: 0,
            right: 0, // Set left and right to 0 for full width
            child: Align(
              alignment: Alignment.center,
              child: Text(
                enteredNumber ==""? "0 ر.س":enteredNumber+" ر،س ",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
// Numpad buttons
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: Column(
              children: [
                buildNumberRow("1", "2", "3"),
                buildNumberRow("4", "5", "6"),
                buildNumberRow("7", "8", "9"),
                buildNumberRow("0", ".", "C"),
              ],
            ),
          ),
// Proceed button
    Positioned(
    bottom: 20, // Adjust position
    left: 20,
    right: 20,
    child: InkWell(
    onTap: () async {
     await handleProceedButton();

    }, // Handle tap on the container
    child: Container(
    height: 40.0, // Set button height
      width: MediaQuery.of(context).size.width/3,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0), // Optional: rounded corners
    gradient: LinearGradient(
    colors: [Color(0xffD8C97D),Color(0xffA27D27)], // Gold gradient colors
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5), // Shadow color
    spreadRadius: 2.0, // Adjust shadow spread
    blurRadius: 4.0, // Adjust shadow blur
    offset: Offset(0, 1), // Adjust shadow offset
    ),
    ],
    ),
    child: Center(
    child: Text(
    "تنفيذ",
    style: TextStyle(color: Colors.white, fontSize: 16.0),
    ),
    ),
    ),
    ),
    ),
        ],
      ),
    );
  }

  Row buildNumberRow(String button1, String button2, String button3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => addToNumber(button1),
          child: Text(
            button1,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
        VerticalDivider(
          color: Colors.white24, // Adjust separator color
          thickness: 1, // Adjust separator thickness
        ),
        TextButton(
          onPressed: () => addToNumber(button2),
          child: Text(
            button2,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
        VerticalDivider(
          color: Colors.white24, // Adjust separator color
          thickness: 1, // Adjust separator thickness
        ),
        (button3 == "C")
            ? TextButton(
                onPressed: clearNumber,
                child: Text(
                  button3,
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              )
            : TextButton(
                onPressed: () => addToNumber(button3),
                child: Text(
                  button3,
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
      ],
    );
  }

  Future<void> handleProceedButton() async {
    // Try converting entered number to double
    double enteredNumberDouble=0;
    try {
      enteredNumberDouble = double.parse(enteredNumber);
    } catch (error) {
      print("Error converting entered number to double: $error");
      return; // Exit function if conversion fails
    }
    final SharedPreferences sp = await SharedPreferences.getInstance();
    // Read value from Firestore
    double firestoreValue = 0.0;
    try {


      final docRef = FirebaseFirestore.instance
          .collection('users')
          .doc(sp.getString('uid'));


      final docSnapshot = await docRef.get();
      if (docSnapshot.exists) {
        firestoreValue = docSnapshot.get("wallet_balance").toDouble();


      } else {
        print("Document does not exist in Firestore");
      }
    } catch (error) {
      print("Error reading from Firestore: $error");
      return; // Exit function if read fails
    }

    // Calculate sum and update Firestore
    final double updatedValue = firestoreValue + enteredNumberDouble;
    try {
      await FirebaseFirestore.instance.collection('users').doc(sp.getString('uid')).update({
        "wallet_balance": updatedValue, // Replace with your field name
      });
      print("Firestore updated with value: $updatedValue");
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text('لقد تم الايداع بنجاح!'),
      //     // backgroundColor: Colors.red, // Or any suitable error color
      //   ),
      // );
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) =>
              DoneTrue(),
        ),
      );
      // Navigator.of(context).pop();
    } catch (error) {
      print("Error updating Firestore: $error");
    }
  }

}

void showMyBottomSheet(BuildContext context) {
  showModalBottomSheet(

      context: context,
      isScrollControlled: true, // Adjust if content might overflow
      builder: (context) => AccountRechargeSheet());
}
