import 'package:app_pet_fteam/model/item_pet_model.dart';
import 'package:flutter/material.dart';

class ItemPetComponents extends StatelessWidget {
  final ItemPet pet;

  const ItemPetComponents({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: 130,
// https://macoratti.net/19/09/flut_circimg2.htm
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(34),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(pet.image),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(pet.nome,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                    pet.raca,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '${pet.sexo}, ${pet.idade}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const Icon(Icons.location_on_sharp,
                      color: Colors.deepOrange, size: 18),
                  Text(
                    pet.localizacao,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.favorite_border,
              color: Colors.grey,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
