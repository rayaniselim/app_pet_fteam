import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

class PetDetailsStackImage extends StatelessWidget {
  final PetModel pet;
  final double widgetWidth;

  const PetDetailsStackImage({
    Key? key,
    required this.pet,
    required this.widgetWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      child: ClipPath(
        clipper: RoundShape(),
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: pet.backgroundColor,
                  borderRadius: BorderRadius.circular(300),
                ),
              ),
              Container(
                // transform:
                // Matrix4.translationValues(-(widgetWidth * .3), 0.0, 0.0),
                child: Image.asset(
                  pet.photo,
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center,
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Flexible(
              //       flex: 6,
              //       child: Container(
              //         // transform: Matrix4.translationValues(
              //         // widgetWidth * .3, 0.0, 0.0),
              //         child: Image.asset(
              //           pet.photo,
              //           fit: BoxFit.fitHeight,
              //           alignment: Alignment.center,
              //         ),
              //       ),
              //     ),
              //     Flexible(
              //       flex: 2,
              //       child: Container(),
              //     ),
              //   ],
              // ),
            ],
            // ),
          ),
        ),
      ),
    );
  }
}

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
