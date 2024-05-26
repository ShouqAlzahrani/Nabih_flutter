import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nabih/screens/Purchase.dart';

void main() {
  group('SellAndPurchaseScreen Tests', () {
    testWidgets('increment function increases counter if under availableQuantityToBePaid', (WidgetTester tester) async {
      // Create the widget by pumping it into the widget tester
      await tester.pumpWidget(MaterialApp(home: SellAndPurchaseScreen(
          price: 10.0, walletBalance: 100.0, currentQuantity: 5, asset: 1, isPurchase: true)));

      // Find increment button and tap
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump(); // Rebuild the widget after the state change

      // Check if counter text is incremented
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('increment function does not increase counter if reaching availableQuantityToBePaid', (WidgetTester tester) async {
      // Create the widget by pumping it into the widget tester
      await tester.pumpWidget(MaterialApp(home: SellAndPurchaseScreen(
          price: 10.0, walletBalance: 10.0, currentQuantity: 5, asset: 1, isPurchase: true))); // Adjust wallet balance to match the price
      
      // Tap increment button twice
      await tester.tap(find.byIcon(Icons.add));
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump(); // Rebuild the widget after the state change

      // Check if counter text does not increment beyond 1 (since walletBalance/price = 1)
      expect(find.text('1'), findsOneWidget);
    });
  });
}