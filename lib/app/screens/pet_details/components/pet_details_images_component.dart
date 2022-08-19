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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 24,
            ),
// Aqui vem a lista de fotos
            child: PetDetailsPhotosListComponent(
              pet: pet,
            ),
          ),
        ),
// foto principal do pet
        Flexible(
          flex: 5,
          child: Stack(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                  // minHeight: 400,
                ),
                child: Positioned(
                  bottom: 16,
                  top: 16,
                  right: -(MediaQuery.of(context).size.width * 0.25),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: pet.backgroundColor,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                top: 32,
                right: 0,
                child: Container(
                  color: Colors.transparent,
                  child: Hero(
                    tag: pet.photo,
                    child: Image.asset(
                      pet.photo,
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
