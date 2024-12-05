import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen loads and displays list items', (WidgetTester tester) async {
    // Build HomeScreen and trigger a frame
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Verifikasi apakah judul muncul
    expect(find.text('Museum Gallery'), findsOneWidget);

    // Verifikasi apakah ada elemen list
    expect(find.byType(ListTile), findsWidgets);
  });
}
