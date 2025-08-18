import 'package:flutter/material.dart';
import 'package:spotpom/helpers/app_gap.dart';
import 'package:spotpom/helpers/text_styles.dart';



class BulletMenu extends StatelessWidget {
  const BulletMenu({super.key, required this.items});
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (int i = 0; i < items.length; i++) {
      children.add(Text(items[i], style: AppTextStyles.body));
      if (i != items.length - 1) {
        children.addAll(const [
          AppGaps.w8,
          Text('·', style: TextStyle(color: Colors.white54, fontSize: 18)),
          AppGaps.w8,
        ]);
      }
    }
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 4,
      children: children,
    );
  }
}
