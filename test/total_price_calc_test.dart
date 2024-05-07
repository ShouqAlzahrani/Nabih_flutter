import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nabih/screens/Purchase.dart'; // Adjust this import to the actual path

void main() {
  group('SellAndPurchaseScreen totalPrice Tests', () {
    testWidgets('totalPrice calculates and formats correctly', (WidgetTester tester) async {
      // Arrange: Setup the widget with a specific price and initial counter
      await tester.pumpWidget(MaterialApp(home: SellAndPurchaseScreen(
          price: 9.99, walletBalance: 100.0, currentQuantity: 5, asset: 1, isPurchase: true)));

      // Act: Get the state of the widget to manipulate the counter
      final state = tester.state(find.byType(SellAndPurchaseScreen)) as dynamic;
      state.counter = 3;  // For example, set counter to 3
      await tester.pump(); // Trigger a rebuild

      // Assert: Check if the totalPrice is calculated and formatted correctly
      expect(state.totalPrice, '29.97'); // 9.99 * 3 = 29.97 formatted to two decimal places
    });
  });
}