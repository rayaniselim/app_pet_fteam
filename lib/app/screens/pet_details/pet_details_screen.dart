import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

/// page datails (description)
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
        preferredSize: Size(0, 73),
        child: PetDetailsAppBarComponent(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          PetDetailsHeaderComponent(
            pet: pet,
          ),
          Expanded(
            child: PetDetailsImagesComponent(
              pet: pet,
            ),
          ),
          const PetDetailsDescriptionComponent(),
          const PetDetailsAdoptButtonComponent(),
        ],
      ),
    );
  }
}
