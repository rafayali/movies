import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:movies_flutter/ui/app/app.dart';
import 'package:movies_flutter/main.dart';

void main(List<String> args) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('login should have a login button', (WidgetTester tester) async {
    final state = MoviesAppParams(authenticated: true);

    await tester.pumpWidget(MoviesApp(params: state));

    await tester.pumpAndSettle(const Duration(seconds: 5));

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
