import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:machine_test/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at '0'.
    expect(find.text('0'), findsOneWidget); // Check that '0' is found exactly once
    expect(find.text('1'), findsNothing);  // Check that '1' is not found

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump(); // Rebuild the widget after the tap

    // Verify that our counter has incremented to '1'.
    expect(find.text('0'), findsNothing);  // Check that '0' is no longer found
    expect(find.text('1'), findsOneWidget); // Check that '1' is found exactly once
  });
}
