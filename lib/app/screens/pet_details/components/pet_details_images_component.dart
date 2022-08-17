import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

// body da page details (description)
class PetDetailsImagesComponent extends StatelessWidget {
  const PetDetailsImagesComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(
              left: 24,
              top: 24,
            ),
// Aqui vem a lista de fotos
            child: PetDetailsPhotosListComponent(),
          ),
        ),
// foto principal do pet
        Flexible(
          flex: 5,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        petsListData[0].backgroundImage,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/pets/golden/golden_7.png',
                    height: 350,
                    width: 200,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
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
