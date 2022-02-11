import 'package:flutter/material.dart';

class SecondStepButton extends StatefulWidget {
  final String routeName;
  final Color textColor;
  final Color buttonBackgroundColor;
  final String text;
  final bool checked;
  final double width;
  final double height;

  final double right, top, left;
  final double paddingHorizontal;
  final double textFontSize;
  const SecondStepButton(
      {Key? key,
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
      this.width = 62,
      this.height = 36})
      : super(key: key);

  @override
  State<SecondStepButton> createState() => _SecondStepButtonState();
}

class _SecondStepButtonState extends State<SecondStepButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: EdgeInsets.fromLTRB(widget.left, widget.top, widget.right, 0),
      // child: Align(
      //   alignment: Alignment.topLeft,
      // margin: EdgeInsets.only(right: 0),
      //margin: EdgeInsets.fromLTRB(0, 100, 100, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: ElevatedButton(
          child: Text(
            widget.text,
            style: TextStyle(color: widget.textColor),
          ),
          onPressed: (widget.checked != true)
              ? null
              : () {
                  Navigator.of(context).pushNamed(widget.routeName);
                },
          style: ElevatedButton.styleFrom(
            primary: widget.buttonBackgroundColor,
            padding: EdgeInsets.symmetric(
                horizontal: widget.paddingHorizontal, vertical: 10),
            textStyle: TextStyle(
              color: widget.textColor,
              fontSize: widget.textFontSize,
              height: 1.6,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.02,
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
