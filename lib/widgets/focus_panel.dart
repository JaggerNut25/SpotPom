import 'package:flutter/material.dart';
import 'package:spotpom/helpers/app_gap.dart';
import 'package:spotpom/helpers/card_decoration.dart';
import 'package:spotpom/helpers/text_styles.dart';
import 'package:spotpom/widgets/progress_bar.dart';

class FocusPanel extends StatelessWidget {
  const FocusPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.card,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppGaps.h4,
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.cases, color: Colors.blue),
                AppGaps.w8,
                Text('Focus Time',
                    key: ValueKey('focusTitle'),
                    style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),

          AppGaps.h20,
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Session 1',
                key: ValueKey('sessionTitle'),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          AppGaps.h20,
          const Center(
            child: Text(
              '25:00',
              key: ValueKey('focusTimeText'),
              style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          AppGaps.h8,
          const ProgressBar(value: 0.0, key: ValueKey('focusProgress')),
          AppGaps.h8,
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('0%', style: AppTextStyles.body),
                AppGaps.w16,
                Text('00:00 / 25:00', style: AppTextStyles.body),
              ],
            ),
          ),

          AppGaps.h12,
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  key: const ValueKey('startBtn'),
                  onPressed: _noop,
                  icon: const Icon(Icons.play_arrow_outlined, size: 18, color: Colors.white),
                  label: const Text('Start', style: AppTextStyles.body),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white24),
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                AppGaps.w16,
                IconButton(
                  key: const ValueKey('resetBtn'),
                  onPressed: _noop,
                  icon: const Icon(Icons.replay, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static void _noop() {}
}
