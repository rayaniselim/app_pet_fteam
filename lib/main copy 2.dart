// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: MyWidgetSizeTMP());
//   }
// }

// class MyWidgetSizeTMP extends StatefulWidget {
//   @override
//   MyWidgetSizeTMPState createState() {
//     return new MyWidgetSizeTMPState();
//   }
// }

// class MyWidgetSizeTMPState extends State<MyWidgetSizeTMP> {
//   //creating Key for red panel
//   GlobalKey _keyRed = GlobalKey();

//   _getSizes() {
//     final RenderObject? renderBoxRed =
//         _keyRed.currentContext?.findRenderObject();
//     final sizeRed = renderBoxRed?.size;
//     print("SIZE of Red: $sizeRed");
//   }

//   _getPositions() {
//     final RenderObject? renderBoxRed =
//         _keyRed.currentContext?.findRenderObject();
//     final positionRed = renderBoxRed?.localToGlobal(Offset.zero);
//     print("POSITION of Red: $positionRed ");
//   }

//   _afterLayout(_) {
//     _getSizes();
//     _getPositions();
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _keyRed, //Add this.
//       appBar: AppBar(),
//       body: Column(
//         children: <Widget>[
//           Flexible(
//             flex: 2,
//             child: Container(
//               color: Colors.red,
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: Container(
//               color: Colors.purple,
//             ),
//           ),
//           Flexible(
//             flex: 3,
//             child: Container(
//               color: Colors.green,
//             ),
//           ),
//           Spacer(),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 MaterialButton(
//                   elevation: 5.0,
//                   padding: EdgeInsets.all(15.0),
//                   color: Colors.grey,
//                   child: Text("Get Sizes"),
//                   onPressed: _getSizes,
//                 ),
//                 MaterialButton(
//                   elevation: 5.0,
//                   color: Colors.grey,
//                   padding: EdgeInsets.all(15.0),
//                   child: Text("Get Positions"),
//                   onPressed: _getPositions,
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
