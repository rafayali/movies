import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:movies_flutter/main.dart';

void main(List<String> args) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('login should have a login button', (WidgetTester tester) async {
    await tester.pumpWidget(MainApplication());

    await tester.pumpAndSettle(Duration(seconds: 5));

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
