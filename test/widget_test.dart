// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:multi_screen_app/app_router.dart';
import 'package:multi_screen_app/main.dart';

void main() {
  testWidgets('Home screen smoke test', (WidgetTester tester) async {
    AppRouter.router.go('/');
    await tester.pumpWidget(const MyApp());

    expect(find.text('Recipe Explorer'), findsOneWidget);
    expect(find.text('Browse recipes'), findsOneWidget);
  });

  testWidgets('Named navigation opens the recipe detail', (WidgetTester tester) async {
    AppRouter.router.go('/');
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Browse recipes'));
    await tester.pumpAndSettle();
    expect(find.text('Recipes'), findsOneWidget);
    expect(find.text('Pasta Primavera'), findsOneWidget);

    await tester.tap(find.text('Pasta Primavera'));
    await tester.pumpAndSettle();
    expect(find.text('Pasta with seasonal vegetables and a light herb sauce.'), findsOneWidget);
  });

  testWidgets('Form validation and theme toggle are available', (WidgetTester tester) async {
    AppRouter.router.go('/');
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Share a recipe'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Submit recipe'));
    await tester.pump();
    expect(find.text('Enter name'), findsOneWidget);
    expect(find.text('Enter a valid email'), findsOneWidget);
    expect(find.text('Minimum 6 characters'), findsOneWidget);

    AppRouter.router.goNamed('settings');
    await tester.pumpAndSettle();
    expect(find.text('Dark theme'), findsOneWidget);
    await tester.tap(find.byType(Switch));
    await tester.pump();
    expect(find.byType(Switch), findsOneWidget);
  });
}
