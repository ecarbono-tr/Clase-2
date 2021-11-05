import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_1/main.dart';
import 'package:proyecto_1/widgets/widget_container.dart';
import 'package:proyecto_1/widgets/widget_text.dart';

void main() {
  testWidgets('Screan Widget Ok', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });

  testWidgets('ScreanContainer Widget Ok', (WidgetTester tester) async {
    await tester.pumpWidget(const ScreanContainer());
  });

  testWidgets('Screantext Widget Ok', (WidgetTester tester) async {
    await tester.pumpWidget(const Screantext());
  });
}
