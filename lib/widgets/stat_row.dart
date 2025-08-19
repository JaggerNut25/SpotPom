import 'package:flutter/material.dart';
import 'package:spotpom/helpers/app_gap.dart';
import 'package:spotpom/widgets/stat_tile.dart';

class StatRow extends StatelessWidget {
  const StatRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatTile(
            icon: Icons.timer,
            iconColor: Colors.green,
            value: '0',
            label: 'Sessions',
          ),
        ),
        AppGaps.w16,
        Expanded(
          child: StatTile(
            icon: Icons.music_note_outlined,
            iconColor: Colors.blue,
            value: '0h',
            label: 'Focus temps',
          ),
        ),
      ],
    );
  }
}
