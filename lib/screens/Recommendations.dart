import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabih/widgets/MainButton.dart';
import 'package:nabih/core/Route.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'assetDetaisl.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({super.key});

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {

  int stcAsset=0;
  int zainAsset=0;
  int mobilyAsset=0;
  double? walletBalance=0;


  void initState() {
    Future.delayed(Duration(seconds: 0), () async {
      walletBalance = await readWalletBalance();

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1210),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'التوصيات',
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
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/Standardd.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'فرصة شراء',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            const Text(
                              'الان  .  stc',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset('img/sms.svg')
                          ],
                        ),
                        const Text(
                          'يُوصى بشراء سهم شركة STC بناءً على الاتجاه الصاعد الواضح في الرسم البياني.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        MainButton(height: 30, text: 'شِراء', onTap: () {
                          navigateTo(context, AssetDetails( quantity: stcAsset, price: 40, walletBalance: walletBalance!, asset: 1,));

                        })
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/Standardd.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'فرصة بيع',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            const Text(
                              'الان  .  zain',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset('img/sms.svg')
                          ],
                        ),
                        const Text(
                          'يُوصى بشراء سهم شركة STC بناءً على الاتجاه الصاعد الواضح في الرسم البياني.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        MainButton(
                          height: 30,
                          text: 'بيع',
                          color: Colors.red,
                          onTap: () {
                            navigateTo(context, AssetDetails( quantity: zainAsset, price: 25, walletBalance: walletBalance!, asset: 2,));



                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/Standardd.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'فرصة شراء',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            const Text(
                              'الان  .  stc',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset('img/sms.svg')
                          ],
                        ),
                        const Text(
                          'يُوصى بشراء سهم شركة STC بناءً على الاتجاه الصاعد الواضح في الرسم البياني.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        MainButton(height: 30, text: 'شِراء', onTap: () {

                          navigateTo(context, AssetDetails( quantity: stcAsset, price: 40, walletBalance: walletBalance!, asset: 1,));

                        })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
}
