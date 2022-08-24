import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

// body da page details (description)
class PetDetailsImagesComponent extends StatelessWidget {
  final PetModel pet;

  const PetDetailsImagesComponent({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final roundShape = RoundShape();
    // final Size size = Size(400, 400); //controller.value.size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 32,
            ),
// Aqui vem a lista de fotos
            child: PetDetailsPhotosListComponent(
              pet: pet,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
// foto principal do pet
        Expanded(
          //   child: Container(
          //     child: Image.asset(
          //       pet.photo,
          //       // 'https://picsum.photos/250?image=9',
          //       // fit: BoxFit.scaleDown,
          //       alignment: new Alignment(2, 1.2),
          //     ),
          //     transform: Matrix4.translationValues(
          //         MediaQuery.of(context).size.width * .3, 0.0, 0.0),
          //   ),
          // ),
          //  Stack(children: [
          //   Positioned(
          //     bottom: 0,
          //     top: 0,
          //     // left: 0,
          //     right: -RoundShape().getWidgetWidth,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              //  height: constraints.maxHeight
              //  width: constraints.maxWidth,

              // final showPercent = 0.7;
              // final hidePercent = (1 - showPercent);
              // return Container(
              //   child: Image.asset(
              //     pet.photo,
              //     // 'https://picsum.photos/250?image=9',
              //     // fit: BoxFit.scaleDown,
              //     // alignment: new Alignment(2, 1.2),
              //   ),
              //   transform: Matrix4.translationValues(
              //       constraints.maxWidth * .3, 0.0, 0.0),
              // );
              // return Stack(
              //   alignment: AlignmentDirectional.topEnd,
              //   children: [
              //     Positioned(
              //       right: -(constraints.maxWidth * hidePercent),
              //       // left: 0,
              //       // top: 0,
              //       // bottom: 0,
              //       child:
              return
                  // ClipPath(
                  //   clipper: RoundShape(
                  //       // showPercent: showPercent,
                  //       // widgetHeight: constraints.maxHeight,
                  //       // widgetWidth: constraints.maxWidth,
                  //       ),
                  //   child:
                  PetDetailsStackImage(
                pet: pet,
                widgetWidth: constraints.maxWidth,
                // ),
              );
              //     ),
              //   ],
              // );
//               return Container(
//                 child: Image.network(
//                   pet.photo,
//                   // 'https://picsum.photos/250?image=9',
//                   fit: BoxFit.scaleDown,
// //             alignment: new Alignment(1.4, -1.2),
//                 ),
//                 transform: Matrix4.translationValues(
//                     MediaQuery.of(context).size.width * .8, -50.0, 0.0),
//               );
              //   return Container(
              //     // just a parent
              //     child: Align(
              //       // important
              //       alignment: Alignment.center,
              //       child: Container(
              //         // just a parent
              //         width: constraints.maxWidth,
              //         height: constraints.maxWidth,
              //         child: SizedBox(
              //           width: constraints.maxWidth, // final width of cropped portion
              //           height:
              //               constraints.maxWidth, // final height of cropped portion
              //           child: OverflowBox(
              //             alignment: Alignment(-1,
              //                 -1), // gives you top left portion of the size above, (1,1) gives bottom right, right direction is positive x, downward direction is positive y, see about Alignment on flutter docs for more details
              //             maxWidth: double.infinity,
              //             maxHeight: double.infinity,
              //             child: Container(
              //               width: constraints.maxWidth,
              //               height: constraints.maxWidth,
              //               // child: ClipRect(
              //               //   clipper: RectClipper(
              //               //       i,
              //               //       width /
              //               //           4), // this is a custom clipper i made of type CustomClipper<Rect>
              //               child: ClipPath(
              //                 clipper: RoundShape(
              //                   widgetHeight: constraints.maxHeight,
              //                   widgetWidth: constraints.maxWidth,
              //                 ),
              //                 child: PetStackImage(
              //                   pet: pet,
              //                   widgetWidth: constraints.maxWidth,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   );
            },
          ),
        ),
        // //   ),
        // // ]),
        // ),

        //  ClipRect(
        //   child: OverflowBox(
        //     maxWidth: double.infinity,
        //     maxHeight: double.infinity,
        //     alignment: Alignment.centerLeft,
        //     child: FittedBox(
        //       fit: BoxFit.contain,
        //       alignment: Alignment.centerRight,
        //       child: Container(
        //         // width: size.width,
        //         // height: size.height,
        //         child: PetStackImage(
        //           pet: pet,
        //         ),
        //       ),
        //     ),
        //   ),

        // ),
        // ClipRRect(
        //   clipper: ChatBackgroundClipper(),
        //   child: Container(
        //     color: Colors.pink,
        //     child: PetStackImage(
        //       pet: pet,
        //     ),
        //   ),
        // ),
        //     Container(
        //   // just a parent
        //   child: Align(
        //     // important
        //     alignment: Alignment.center,
        //     child: Container(
        //       // just a parent
        //       width: 40,
        //       height: 60,
        //       child: SizedBox(
        //         width: 20, // final width of cropped portion
        //         height: 30, // final height of cropped portion
        //         child: OverflowBox(
        //           alignment: Alignment(-1000,
        //               -1000), // gives you top left portion of the size above, (1,1) gives bottom right, right direction is positive x, downward direction is positive y, see about Alignment on flutter docs for more details
        //           maxWidth: double.infinity,
        //           maxHeight: double.infinity,
        //           child: Container(
        //             width: 20,
        //             height: 20,
        //             child: ClipRect(
        //               clipper:
        //                   ChatBackgroundClipper(), // this is a custom clipper i made of type CustomClipper<Rect>
        //               child: Container(
        //                 color: Colors.pink,
        //                 child: PetStackImage(
        //                   pet: pet,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

// class ChatBackgroundClipper extends CustomClipper<Rect> {
//   @override
//   Rect getClip(Size size) => Rect.fromLTWH(0, 0, size.width, size.height);
// late double getWidgetWidth;

//   @override
//   bool shouldReclip(covariant CustomClipper<Rect> oldClipper) =>
//       oldClipper != this;
// }
class RoundShape extends CustomClipper<Path> {
  // final double showPercent;

  // const RoundShape({
  //   required this.showPercent,
  // });

  @override
  getClip(Size size) {
    var path = Path();
    double widgetHeight = size.height;
    path.lineTo((widgetHeight * 0.7), 0);
    path.lineTo((widgetHeight * 0.7), widgetHeight);
    path.lineTo(0, widgetHeight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
