import 'package:flutter/material.dart';
import 'package:spotpom/helpers/app_gap.dart';
import 'package:spotpom/widgets/focus_panel.dart';
import 'package:spotpom/widgets/top_column.dart';
import 'package:spotpom/widgets/music_panel.dart';
import 'package:spotpom/widgets/stat_row.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0F14),
body: SafeArea(
  child: Padding(
    padding: const EdgeInsets.all(14),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Header(
            title: 'SpotPom',
            items: ['Timer', 'Musique', 'Productivité'],
          ),
          AppGaps.h16,
          FocusPanel(),
          AppGaps.h16,
          MusicPanel(),
          AppGaps.h16,
          StatRow(), 
        ],
      ),
    ),
  ),
),

    );
  }
}



