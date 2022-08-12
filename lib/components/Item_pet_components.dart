import 'package:app_pet_fteam/model/item_pet_model.dart';
import 'package:flutter/material.dart';

class ItemPetComponents extends StatelessWidget {
  final ItemPet pet;

  const ItemPetComponents({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              width: 95,
// https://macoratti.net/19/09/flut_circimg2.htm
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(pet.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                height: 100,
                width: 130,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pet.nome,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      pet.raca,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      '${pet.sexo}, ${pet.idade}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_sharp,
                            color: Colors.deepOrange,
                            size: 18,
                          ),
                          Text(
                            pet.localizacao,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 100,
                maxWidth: 65,
              ),
              alignment: AlignmentDirectional.topEnd,
              color: Colors.white,
              height: 300,
              width: 50,
              child: const Icon(Icons.favorite_border,
                  color: Colors.grey, size: 24),
            ),
          ],
        ),
      ),
    );
  }
}
