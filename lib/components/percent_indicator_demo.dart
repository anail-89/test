// import 'dart:async';

// import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// // import 'package:percent_indicator/circular_percent_indicator.dart';
// // import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class PercentIndicatorDemo extends StatefulWidget {
//   @override
//   _PercentIndicatorDemoState createState() => _PercentIndicatorDemoState();
// }

// class _PercentIndicatorDemoState extends State<PercentIndicatorDemo> {
//   // double percent = 0.0;

//   // double _height = 15;
//   // double _width = 200;

//   // @override
//   // void initState() {
//   //   late Timer _timer;
//   //   _timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
//   //     setState(() {
//   //       percent += 10;
//   //       if (percent >= 100) {
//   //         _timer.cancel();
//   //         // percent=0;
//   //       }
//   //     });
//   //   });
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     // _height = MediaQuery.of(context).size.height;
//     // _width = MediaQuery.of(context).size.width;

//     return Container(
//       margin: EdgeInsets.only(top: 20),
//       //width: MediaQuery.of(context).size.width * 0.5,
//       //alignment: Alignment.center,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         // height: 50,
//         // width: MediaQuery.of(context).size.width * 0.5,
//         children: [
//           LinearPercentIndicator(
//             width: MediaQuery.of(context).size.width * 0.8,
//             animation: true,
//             lineHeight: 20.0,
//             animationDuration: 2500,
//             percent: 0.53,
//             //center: const Text("53.0%"),
//             linearStrokeCap: LinearStrokeCap.roundAll,
//             progressColor: const Color.fromRGBO(255, 125, 100, 1),
//             fillColor: Colors.white,
//             curve: Curves.slowMiddle,
//             //backgroundColor: Colors.green,
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Container(
//             //margin: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//             alignment: Alignment.bottomRight,
//             child: Text(
//               '53/100%',
//               textAlign: TextAlign.right,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 color: Color.fromRGBO(30, 80, 170, 1),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 21,
//           ),
//           Row(
//             children: [],
//           )
//         ],
//       ),
//     );
//   }
// }
