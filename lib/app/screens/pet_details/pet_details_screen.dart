import 'package:app_pet_fteam/app/app.dart';
import 'package:flutter/material.dart';

// page datails (description)
class PetDetailsScreen extends StatefulWidget {
  const PetDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PetDetailsScreen> createState() => _PetDetailsScreenState();
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
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
        children: const [
// detalhes do pet abaixo da app bar
          PetDetailsHeaderComponent(),
          Expanded(
            child: PetDetailsImagesComponent(),
          ),
// texto da descricao
          PetDetailsDescriptionComponent(),
// botao ADOPT
          PetDetailsAdoptButtonComponent(),
        ],
      ),
    );
  }
}
