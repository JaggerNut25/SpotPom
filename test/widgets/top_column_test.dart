import 'package:flutter_test/flutter_test.dart';
import 'package:spotpom/widgets/top_column.dart';


import '../test_utils.dart';


void main() {
  testWidgets('Header renders title and bullet menu items', (tester) async {
    await tester.pumpWidget(wrap(const Header(
      title: 'SpotPom',
      items: ['Timer', 'Musique', 'Productivité'],
    )));

    expect(find.text('SpotPom'), findsOneWidget);
    expect(find.text('Timer'), findsOneWidget);
    expect(find.text('Musique'), findsOneWidget);
    expect(find.text('Productivité'), findsOneWidget);

    
    expect(find.text('·'), findsNWidgets(2));
  });
}
