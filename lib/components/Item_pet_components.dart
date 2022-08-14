import 'package:app_pet_fteam/model/item_pet_model.dart';
import 'package:flutter/material.dart';

class ItemPetComponents extends StatelessWidget {
  final ItemPet petPage;

  const ItemPetComponents({
    Key? key,
    required this.petPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 95,
              width: 100,
// https://macoratti.net/19/09/flut_circimg2.htm
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(petPage.image),
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
                      petPage.nome,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      petPage.raca,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      '${petPage.sexo}, ${petPage.idade}',
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
                            petPage.localizacao,
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
              alignment: AlignmentDirectional.topEnd,
              color: Colors.white,
              height: 100,
              width: 55,
              child: const Icon(
                Icons.favorite_border,
                size: 24,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
