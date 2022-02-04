import 'package:flutter/material.dart';

class SecondStepButton extends StatelessWidget {
  final String routeName;
  final Color textColor;
  final Color buttonBackgroundColor;
  final String text;
  final bool checked;
  final double right, top, left;
  final double paddingHorizontal;
  final double textFontSize;
  const SecondStepButton({
    Key? key,
    required this.checked,
    required this.routeName,
    required this.textColor,
    required this.buttonBackgroundColor,
    required this.text,
    this.right = 28,
    this.top = 60,
    this.left = 0,
    this.paddingHorizontal = 15,
    this.textFontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 40,
      margin: EdgeInsets.fromLTRB(left, top, right, 0),
      child: Align(
        alignment: Alignment.topLeft,
        // margin: EdgeInsets.only(right: 0),
        //margin: EdgeInsets.fromLTRB(0, 100, 100, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: ElevatedButton(
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
            onPressed: (checked != true)
                ? null
                : () {
                    Navigator.of(context).pushNamed(routeName);
                  },
            style: ElevatedButton.styleFrom(
                primary: buttonBackgroundColor,
                padding: EdgeInsets.symmetric(
                    horizontal: paddingHorizontal, vertical: 12),
                textStyle: TextStyle(
                    color: textColor,
                    fontSize: textFontSize,
                    height: 1.6,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    );
  }
}
