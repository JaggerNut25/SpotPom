import 'package:flutter/material.dart';

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 35,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    height: 1.1,
  );
  static const body = TextStyle(color: Colors.white);
  static final muted = TextStyle(color: Colors.white.withValues(alpha: 0.6));
}