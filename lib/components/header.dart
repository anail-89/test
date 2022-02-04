import 'package:flutter/material.dart';

class header extends StatelessWidget {
  final double left;
  final double top;
  const header({
    Key? key,
    this.left = 32,
    this.top = 175,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      alignment: Alignment.topLeft,
      margin: EdgeInsets.fromLTRB(left, top, 0, 0),
      child: const Text(
        'Root user installation',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Color.fromRGBO(10, 25, 49, 1),
        ),
      ),
    );
  }
}
