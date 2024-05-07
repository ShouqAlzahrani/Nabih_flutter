import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nabih/screens/information.dart'; // Adjust the import path to where your Information widget is located

void main() {
  testWidgets('Back button navigates away from Information', (WidgetTester tester) async {
    // Build our app and trigger a frame with Information widget
    await tester.pumpWidget(MaterialApp(home: Information()));

    // Verify Information is displayed
    expect(find.byType(Information), findsOneWidget);

    // Tap the back button
    await tester.tap(find.byIcon(Icons.arrow_back)); // Make sure the icon is correctly referenced
    await tester.pumpAndSettle(); // This triggers a frame and allows the navigation to complete

    // Verify that after pressing back, the Information widget is not visible
    // This assumes that the Information widget is popped from navigation stack
    expect(find.byType(Information), findsNothing);
  });
}