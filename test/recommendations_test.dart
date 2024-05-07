import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nabih/screens/Recommendations.dart';
import 'package:nabih/screens/assetDetaisl.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('Navigation from Recommendations to AssetDetails works', (WidgetTester tester) async {
    // Create a GlobalKey to observe Navigator state
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    // Build the widget tree with MaterialApp and the navigatorKey
    await tester.pumpWidget(MaterialApp(
      navigatorKey: navigatorKey,
      home: Recommendations(),
    ));

    // Test the "Buy" button for STC
    await tester.tap(find.text('شِراء').first);
    await tester.pumpAndSettle(); // Wait for navigation to complete

    // Verify that the AssetDetails widget is now displayed
    expect(find.byType(AssetDetails), findsOneWidget);

  });
}