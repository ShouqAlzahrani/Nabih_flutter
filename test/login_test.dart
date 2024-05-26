import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:nabih/main.dart' as app;
import 'package:nabih/screens/login.dart';
import 'package:nabih/screens/register.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Registration button navigates to registration screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Login()));
    await tester.pumpAndSettle();

    expect(find.text('ليس لديك حساب ؟'), findsOneWidget);
    await tester.tap(find.text('ليس لديك حساب ؟'));
    await tester.pumpAndSettle();

    expect(find.byType(Register), findsOneWidget);
  });
}
