import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:spotpom/widgets/stat_row.dart';


import '../test_utils.dart';


void main() {
  testWidgets('StatsRow renders two StatTiles with correct labels', (tester) async {
    await tester.pumpWidget(wrap(const StatRow()));

    expect(find.text('Sessions'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    expect(find.text('Focus temps'), findsOneWidget);
    expect(find.text('0h'), findsOneWidget);
  });
}
