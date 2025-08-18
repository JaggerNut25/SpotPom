import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:spotpom/helpers/app_gap.dart';
import 'package:spotpom/helpers/card_decoration.dart';
import 'package:spotpom/helpers/text_styles.dart';
import 'package:spotpom/widgets/progress_bar.dart';

class MusicPanel extends StatelessWidget {
  const MusicPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.card,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 12,
            runSpacing: 8,
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage('https://picsum.photos/300'),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Focus Ambient',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, height: 1),
                  ),
                  AppGaps.h4,
                  Text('Study music', style: TextStyle(color: Colors.grey)),
                ],
              ),
              const _StatusChip(text: 'En pause'),
            ],
          ),
          AppGaps.h20,
          const ProgressBar(value: 0.35, key: Key('musicProgress')),
          AppGaps.h8,
          Row(
  children: const [
    Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text('1:23', style: AppTextStyles.body),
      ),
    ),
    Spacer(),
    Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerRight,
        child: Text('3:45', style: AppTextStyles.body),
      ),
    ),
  ],
),
          AppGaps.h16,
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            spacing: 12,
            runSpacing: 8,
            children: [
              const Icon(Icons.volume_up, color: Colors.white),
  
              const _SliderMock(minWidth: 80, maxWidth: 160, thumbLeft: 57),
              Transform.rotate(
                angle: math.pi / 3,
                child: const Icon(Icons.play_arrow_outlined, color: Colors.white),
              ),
              const Icon(Icons.play_circle_fill_outlined, color: Colors.blue, size: 42),
              const Icon(Icons.play_arrow_outlined, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 0, maxWidth: 120),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: (0.2)),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class _SliderMock extends StatelessWidget {
  const _SliderMock({
    required this.minWidth,
    required this.maxWidth,
    required this.thumbLeft,
  });

  final double minWidth;
  final double maxWidth;
  final double thumbLeft;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, c) {
        final w = c.maxWidth.clamp(minWidth, maxWidth);
        return SizedBox(
          width: w,
          height: 20,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Positioned(
                left: thumbLeft.clamp(0, w - 16),
                top: 2,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
