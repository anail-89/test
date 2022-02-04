import 'package:flutter/material.dart';
import 'package:test/models/dash_line.dart';

class DashLine extends StatelessWidget {
  const DashLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(1, 60),
      painter: DashedLineVerticalPainter(),
    );
  }
}
