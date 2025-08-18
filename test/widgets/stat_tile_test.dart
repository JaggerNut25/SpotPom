import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spotpom/widgets/stat_tile.dart';


Widget wrap(Widget c) => MaterialApp(home: Scaffold(body: Row(children: [Expanded(child: c)])));

void main() {
  testWidgets('StatTile fits in 88 height without overflow', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 88, width: 370),
            child: const StatTile(
              icon: Icons.timer,
              iconColor: Colors.blue,
              value: '0',
              label: 'Sessions'
            ),
          ),
        ),
      ),
    );
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Sessions'), findsOneWidget);
  });
}
