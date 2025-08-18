
import 'package:flutter/material.dart';
import 'package:spotpom/helpers/app_gap.dart';
import 'package:spotpom/helpers/text_styles.dart';
import 'package:spotpom/widgets/bullet_menu.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title, required this.items});
  final String title;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 12,
        runSpacing: 8,
        children: [
        Text(title, style: AppTextStyles.title, maxLines: 1, overflow: TextOverflow.ellipsis),
        AppGaps.h8,
        BulletMenu(items: items),
      ],
      ),
    );
  }
}