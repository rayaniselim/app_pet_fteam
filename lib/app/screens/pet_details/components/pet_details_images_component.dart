import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

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
          width: 138,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 16,
              right: 24,
              bottom: 8,
            ),

            /// Aqui vem a lista de fotos
            child: PetDetailsPhotosListComponent(
              pet: pet,
            ),
          ),
        ),

        /// foto principal do pet
        Expanded(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Align(
                alignment: Alignment.centerRight,
                child: PetDetailsStackImage(
                  pet: pet,
                  widgetWidth: constraints.maxWidth,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
