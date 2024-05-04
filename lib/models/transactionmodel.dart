import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrdersTransaction {
  final int assetCode;
  final int quantity;
  final double price;
  final bool isPurchase;
  final String dateString;
  final Timestamp date;
  final int id;

  OrdersTransaction({
    required this.assetCode,
    required this.quantity,
    required this.price,
    required this.isPurchase,
    required this.dateString,
    required this.date,
    required this.id,
  });

  factory OrdersTransaction.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;
    final timestamp = data['date'] as Timestamp;
    final formattedDate = timestamp.toDate().toString().substring(0, 10);

    return OrdersTransaction(
      assetCode: data['assetCode'] as int,
      quantity: data['quantity'] as int,
      price: data['price'] as double,
      isPurchase: data['isPurchase'] as bool,
      dateString: formattedDate,
      date: timestamp,
      id: data['idCounter'] as int,
    );
  }
}



