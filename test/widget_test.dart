
import 'package:flutter_test/flutter_test.dart';
import 'package:recetas_app/main.dart';

void main() {
  testWidgets('La aplicación inicia correctamente', (WidgetTester tester) async {
    await tester.pumpWidget(const RecetasApp());

    expect(find.text('RecetasApp'), findsOneWidget);
  });
}
