import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

class PetStackImage extends StatelessWidget {
  final PetModel pet;

  const PetStackImage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: pet.backgroundColor,
              borderRadius: BorderRadius.circular(300),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                flex: 6,
                child: Image.asset(
                  pet.photo,
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
        ],
        // ),
      ),
    );
  }
}
