import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,

            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: size.width * 0.3,
                ),
              ),
              Positioned(
                // left: size.width / 4,
                top: size.height / 14,
                child: Image.asset(
                  "assets/images/plant1.png",
                  width: size.width * 0.7,
                ),
              ),
              widget.child,
            ],
          ),
        ),
      ],
    );
  }
}
