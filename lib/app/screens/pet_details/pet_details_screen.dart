import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

// page datails (description)
class PetDetailsScreen extends StatelessWidget {
  final PetModel pet;

  const PetDetailsScreen({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size(0, 64),
// component do AppBar desta página
        child: PetDetailsAppBarComponent(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
// detalhes do pet abaixo da app bar
          PetDetailsHeaderComponent(
            pet: pet,
          ),
          Expanded(
            child: PetDetailsImagesComponent(
              pet: pet,
            ),
          ),
// texto da descricao
          const PetDetailsDescriptionComponent(),
// botao ADOPT
          const PetDetailsAdoptButtonComponent(),
        ],
      ),
    );
  }
}
