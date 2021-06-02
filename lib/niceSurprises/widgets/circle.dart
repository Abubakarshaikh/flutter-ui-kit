import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final Color color;
  Circle({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
