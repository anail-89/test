import 'package:flutter/material.dart';
import 'package:test/models/dash_line.dart';

class DashLine extends StatelessWidget {
  final double height;
  const DashLine({
    Key? key,
    this.height = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(1, height),
      painter: DashedLineVerticalPainter(),
    );
  }
}
