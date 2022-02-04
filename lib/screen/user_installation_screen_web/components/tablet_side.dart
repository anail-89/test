import 'package:flutter/material.dart';

class TabletSide extends StatelessWidget {
  const TabletSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.2,
      height: size.height,
      color: const Color.fromRGBO(66, 63, 246, 1),
      child: Image.asset("assets/images/left_img.png", fit: BoxFit.fill
          // width: size.width * 0.09,
          //height: size.height * 0.9,
          ),
    );
  }
}
