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
    return AspectRatio(
      aspectRatio: 0.7,
      child: Stack(
        children: [
          ClipPath(
            clipper: RoundShape(),
            child: Container(
              color: pet.backgroundColor,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              pet.photo,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

/// Vai desenhar o RoundShape (forma redonda) atrás do pet,
class RoundShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = size.height / 2; // divide a altura
    double pi = 3.14;

    /// path: caminho
    Path path = Path()

      /// posicao dentro do plano cartesiano, (eixo x largura , y altura)
      ..lineTo(size.width - radius, 0)

      /// criar um arco
      ..arcTo(
        /// top right

        Rect.fromPoints(Offset(size.width - radius, 0),
            Offset(size.width * 1.1, radius / 2)),
        1.5 * pi,
        0.5 * pi,
        false,
      )

      /// bottom right
      ..lineTo(size.width, size.height - radius)
      ..arcTo(
        Rect.fromPoints(Offset(size.width - radius, size.height),
            Offset(size.width * 1.1, radius / 0.6)),
        0,
        0.5 * pi,
        false,
      )

      /// bottom left
      ..lineTo(radius, size.height)
      ..arcTo(
        Rect.fromLTWH(0, 0, size.height, size.height),
        0.5 * pi,
        0.5 * pi,
        false,
      )

      /// top left
      ..lineTo(0, radius)
      ..arcTo(
        Rect.fromLTWH(0, 0, size.height, size.height),
        1 * pi,
        0.5 * pi,
        false,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
