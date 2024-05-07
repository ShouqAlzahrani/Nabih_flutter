import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:nabih/models/transactionmodel.dart'; // Update the import path to your OrdersTransaction file

void main() {
  group('OrdersTransaction from Firestore', () {
    test('correctly constructs from Firestore snapshot', () async {
      // Set up the fake Firestore instance and data
      final firestore = FakeFirebaseFirestore();
      await firestore.collection('orders').add({
        'assetCode': 1,
        'quantity': 100,
        'price': 500.0,
        'isPurchase': true,
        'date': Timestamp.now(),
        'idCounter': 1234,
      });

      // Retrieve the document snapshot
      final snapshot = await firestore.collection('orders').get();
      final doc = snapshot.docs.first;

      // Use the factory constructor to create an instance
      OrdersTransaction transaction = OrdersTransaction.fromFirestore(doc);

      // Check that the constructed object matches expected values
      expect(transaction.assetCode, 1);
      expect(transaction.quantity, 100);
      expect(transaction.price, 500.0);
      expect(transaction.isPurchase, true);
      expect(transaction.id, 1234);
    });
  });
}