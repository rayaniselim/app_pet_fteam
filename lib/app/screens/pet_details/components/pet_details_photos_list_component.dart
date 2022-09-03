import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

/// lista de fotos da page descricao pet
class PetDetailsPhotosListComponent extends StatelessWidget {
  final PetModel pet;

  const PetDetailsPhotosListComponent({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: pet.photosList.length,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 0.85,
              child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade200, width: 2.5),
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      pet.photosList[index],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        listGradient(position: PositionType.top, height: 32),
        listGradient(position: PositionType.bottom, height: 32),
      ],
    );
  }
}
