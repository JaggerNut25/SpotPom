
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, required this.value});
  final double value; 

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: LinearProgressIndicator(
        value: value,
        minHeight: 7,
        backgroundColor: Colors.blueGrey,
        color: Colors.lightBlueAccent,
      ),
    );
  }
}