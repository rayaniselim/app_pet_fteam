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
          child: CutWidget(
            right: 56,
            child: Container(
              color: Colors.pink,
              child: PetStackImage(
                pet: pet,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
