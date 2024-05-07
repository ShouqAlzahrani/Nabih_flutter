import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:nabih/screens/register.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Check if all text fields are present', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Register()));
    await tester.pumpAndSettle();

    expect(find.widgetWithText(TextFormField, 'الاسم كامل'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'اسم المستخدم'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'البريد الإلكتروني'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'رقم الهوية'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'تاريخ الميلاد'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'كلمة المرور'), findsOneWidget);
  });

  testWidgets('Check if registration button is clickable', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Register()));
    await tester.pumpAndSettle();

    expect(find.text('تسجيل'), findsOneWidget);
    await tester.tap(find.text('تسجيل'));
    await tester.pumpAndSettle();

    // Here you can add expectations to verify the registration functionality
  });
}