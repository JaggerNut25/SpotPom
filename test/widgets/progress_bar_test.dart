import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spotpom/widgets/progress_bar.dart';

void main() {
  testWidgets('ProgressBar has expected value, height and radius', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: ProgressBar(value: 0.5))));
    final lpi = tester.widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator));
    expect(lpi.value, 0.5);
    expect(lpi.minHeight, 7);

    final clip = tester.widget<ClipRRect>(find.byType(ClipRRect));
    final radius = clip.borderRadius as BorderRadius?;
    expect(radius, isNotNull);
    expect(radius!.topLeft.x, 25);
  });
}
