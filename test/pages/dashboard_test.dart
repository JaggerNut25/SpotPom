import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:spotpom/pages/dashboard.dart';

Widget wrap(Widget c) => MaterialApp(home: c);

void main() {
  testWidgets('Dashboard shows all sections', (tester) async {
    await mockNetworkImagesFor(() async {
      await tester.pumpWidget(wrap(const Dashboard()));
      expect(find.text('SpotPom'), findsOneWidget);
      expect(find.text('Focus Time'), findsOneWidget);
      expect(find.text('Focus Ambient'), findsOneWidget);
      expect(find.text('Sessions'), findsOneWidget);
      expect(find.text('Focus temps'), findsOneWidget);
    });
  });

  testWidgets('Dashboard no overflow on small screen', (tester) async {
    await mockNetworkImagesFor(() async {
      tester.view.physicalSize = const Size(320, 640); 
      tester.view.devicePixelRatio = 2.0;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });

      await tester.pumpWidget(wrap(const Dashboard()));
      await tester.pumpAndSettle();

      expect(find.byType(Dashboard), findsOneWidget);
    });
  });
}
