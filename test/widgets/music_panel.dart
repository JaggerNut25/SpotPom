import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:spotpom/widgets/music_panel.dart';

import '../test_utils.dart';


void main() {
  testWidgets('MusicPanel renders avatar, labels and progress', (tester) async {
    await mockNetworkImagesFor(() async {
      await tester.pumpWidget(wrap(const MusicPanel()));

      expect(find.text('Focus Ambient'), findsOneWidget);
      expect(find.text('Study music'), findsOneWidget);

 
      expect(find.byKey(const Key('musicProgress')), findsOneWidget);


      expect(find.byType(CircleAvatar), findsOneWidget);

   
      expect(find.byIcon(Icons.play_circle_fill_outlined), findsOneWidget);
      expect(find.byIcon(Icons.play_arrow_outlined), findsNWidgets(2)); 
      expect(find.byIcon(Icons.volume_up), findsOneWidget);
    });
  });
}
