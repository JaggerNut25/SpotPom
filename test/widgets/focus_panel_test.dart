import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:spotpom/widgets/focus_panel.dart';


import '../test_utils.dart';


void main() {
  testWidgets('FocusPanel shows timer, progress and buttons', (tester) async {
    await tester.pumpWidget(wrap(const FocusPanel()));

    expect(find.text('Focus Time'), findsOneWidget);
    expect(find.text('Session 1'), findsOneWidget);
    expect(find.byKey(const Key('focusTitle')), findsOneWidget);
    expect(find.byKey(const Key('focusProgress')), findsOneWidget);
    
    final startBtn = find.byKey(const Key('startBtn'));
    final resetBtn = find.byKey(const Key('resetBtn'));
    expect(startBtn, findsOneWidget);
    expect(resetBtn, findsOneWidget);

    await tester.tap(startBtn);
    await tester.tap(resetBtn);
    await tester.pump();
  });
}
