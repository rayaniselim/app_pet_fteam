import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

// lista de fotos da page descricao pet
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
          itemCount: petsListData[0].photosList.length,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 0.85,
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
// borda da foto
                  border: Border.all(color: Colors.grey.shade200, width: 2.5),
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      petsListData[0].photosList[index],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
// efeito esfumacado 'Gradiente' branco
        Align(
          alignment: Alignment.topCenter,
          child: IgnorePointer(
            child: Container(
              height: 32,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white54,
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: IgnorePointer(
            child: Container(
              height: 32,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white54,
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
