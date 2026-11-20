import 'package:cv_flutter_fleurette/data/app_data.dart';
import 'package:cv_flutter_fleurette/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('login opens the CV and navigation switches pages', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const CvApp());

    expect(find.text('Se connecter'), findsOneWidget);

    await tester.enterText(find.byType(TextField).at(0), AppData.loginId);
    await tester.enterText(find.byType(TextField).at(1), AppData.loginPassword);
    await tester.tap(find.text('Se connecter'));
    await tester.pumpAndSettle();

    expect(find.text(AppData.fullName), findsOneWidget);

    await tester.tap(find.text('Famille'));
    await tester.pumpAndSettle();
    expect(find.text('KAMANGA'), findsOneWidget);

    await tester.tap(find.text('Contact'));
    await tester.pumpAndSettle();
    expect(find.text(AppData.email), findsOneWidget);
  });

  testWidgets('login rejects an incorrect password', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const CvApp());

    await tester.enterText(find.byType(TextField).at(0), AppData.loginId);
    await tester.enterText(find.byType(TextField).at(1), 'incorrect');
    await tester.tap(find.text('Se connecter'));
    await tester.pump();

    expect(find.text('Identifiant ou mot de passe incorrect.'), findsOneWidget);
  });
}
