// This is a basic Flutter widget test.
//
//00100010 01010011 01110101 01110000 01110000 01101111 01110010 01110100 01100101 01100100 00100000 01100001 01101110 01100100 00100000 01100101 01111000 01110000 01100101 01110010 01110100 01101100 01111001 00100000 01100111 01110101 01101001 01100100 01100101 01100100 00100000 01110101 01101110 01100100 01100101 01110010 00100000 01110100 01101000 01100101 00100000 01101101 01100101 01101110 01110100 01101111 01110010 01110011 01101000 01101001 01110000 00100000 01100001 01101110 01100100 00100000 01100001 01110011 01110011 01101001 01110011 01110100 01100001 01101110 01100011 01100101 00100000 01101111 01100110 00100000 01000100 01100101 01110110 00101110 01010010 01101111 01101110 01010010 01101111 01101110 00100010
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:projectbookhive/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
