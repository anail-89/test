import 'package:flutter/material.dart';

class StepCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color textColor;
  const StepCard({
    Key? key,
    this.icon = Icons.radio_button_checked,
    this.textColor = const Color.fromRGBO(30, 80, 170, 1),
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      // shadowColor: Colors.white,
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                icon,
                //Icons.radio_button_checked,
                color: textColor,
                size: 14,
                // iconBackground: Color.fromRGBO(30, 80, 170, 1),
              ),
              SizedBox(width: 20),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
