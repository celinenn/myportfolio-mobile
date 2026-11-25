// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:myportfolio_mobile/main.dart';
import 'package:myportfolio_mobile/services/api_client.dart';

void main() {
  testWidgets('MyApp renders without errors', (WidgetTester tester) async {
    final apiClient = ApiClient(
      baseUrl: 'https://celine-nafisa-myportfolio.pws.cs.ui.ac.id',
    );

    await tester.pumpWidget(MyApp(apiClient: apiClient));
    await tester.pump();

    expect(find.byType(MyApp), findsOneWidget);
  });
}
