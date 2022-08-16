import 'package:app_pet_fteam/app/app.dart';
import 'package:flutter/material.dart';

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

        /// Aqui se encontra o component de AppBar desta página
        child: PetDetailsAppBarComponent(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          PetDetailsHeaderComponent(),
          Expanded(
            child: PetDetailsImagesComponent(),
          ),
          PetDetailsDescriptionComponent(),
          PetDetailsAdoptButtonComponent(),
        ],
      ),
    );
  }
}
