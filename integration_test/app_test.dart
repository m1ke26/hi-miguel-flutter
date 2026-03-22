import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hi_miguel/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Hi Miguel text is displayed on launch', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    expect(find.text('Hi! My name is Miguel'), findsOneWidget);
  });
}
