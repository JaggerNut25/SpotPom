import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spotpom/widgets/bullet_menu.dart';


Widget wrap(Widget c) => MaterialApp(home: Scaffold(body: Center(child: c)));

void main() {
  testWidgets('BulletMenu renders items with bullets', (tester) async {
    await tester.pumpWidget(wrap(const BulletMenu(items: ['Timer','Musique','Productivité'])));
    expect(find.text('Timer'), findsOneWidget);
    expect(find.text('Musique'), findsOneWidget);
    expect(find.text('Productivité'), findsOneWidget);
    expect(find.text('·'), findsNWidgets(2));
  });

  testWidgets('BulletMenu wraps on small width (no overflow)', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 120, 
            child: const BulletMenu(items: ['Timer','Musique','Productivité']),
          ),
        ),
      ),
    );
    expect(find.byType(BulletMenu), findsOneWidget);
  });
}
