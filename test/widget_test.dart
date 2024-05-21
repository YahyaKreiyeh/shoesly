import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shoesly/core/routing/app_router.dart';
import 'package:shoesly/shoesly_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      ShoeslyApp(
        appRouter: AppRouter(),
      ),
    );

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
