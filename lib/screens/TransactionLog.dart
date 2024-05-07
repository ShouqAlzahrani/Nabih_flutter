import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/transactionmodel.dart';

class TransactionLog extends StatefulWidget {
  const TransactionLog({super.key});

  @override
  State<TransactionLog> createState() => _TransactionLogState();
}

class _TransactionLogState extends State<TransactionLog> {
  List<OrdersTransaction> _transactions = []; // List to store transactions

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 0), () async {
      _transactions = await readFromFirestore();
      setState(() {});
    });
  }

  Future<List<OrdersTransaction>> readFromFirestore() async {
    final firestore = FirebaseFirestore.instance;
    final collectionRef = firestore.collection('orders');
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final querySnapshot =
        await collectionRef.where('uid', isEqualTo: sp.getString('uid')).get();

    final dataList = querySnapshot.docs
        .map((doc) => OrdersTransaction.fromFirestore(doc))
        .toList();

    return dataList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1210),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'سجل العمليات',
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
              const SizedBox(height: 20),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Color(0xff024232),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'الحالة',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      'عدد الاسهم',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      'السعر',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      'التاريخ/الوقت',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
                    SizedBox(width: 5),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemCount: _transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = _transactions[index];
                    String companyName = '';
                    if (transaction.assetCode == 1)
                      companyName = "شركة الاتصالات السعودية (STC) ";
                    if (transaction.assetCode == 2)
                      companyName = 'شركة زين السعودية (Zain) ';
                    if (transaction.assetCode == 3)
                      companyName = 'شركة موبايلي السعودية (Mobily) ';
                    return Container(
                      height: 85,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 1, 46, 35),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  companyName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  transaction.id.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text(
                                  transaction.isPurchase ? 'شراء' : 'بيع',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Text(
                                  transaction.quantity.toStringAsFixed(2),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  transaction.price.toStringAsFixed(2),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  transaction.dateString,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(), // Simple divider between items
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
