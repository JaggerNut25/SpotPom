import 'package:flutter/material.dart';

class AppDecorations {
  AppDecorations._(); // FYI : this is Private constructor to avoid instanciation

  static final BoxDecoration card = BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(14),
    border: Border.all(color: const Color(0xFF1E2833), width: 1),
    boxShadow: const [
      BoxShadow(
        color: Color(0x66000000),
        blurRadius: 10,
        offset: Offset(0, 6),
      ),
    ],
  );
}
