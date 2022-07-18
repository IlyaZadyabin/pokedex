import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/core/app/view/app.dart';

void main() {
  group('App', () {
    testWidgets('renders App', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
