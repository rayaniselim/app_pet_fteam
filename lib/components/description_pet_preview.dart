import 'package:app_pet_fteam/model/item_pet_model.dart';
import 'package:flutter/material.dart';

class DescriptionPetPreview extends StatelessWidget {
  final ItemPet petDescription;

  const DescriptionPetPreview({
    Key? key,
    required this.petDescription,
  }) : super(key: key);
  get index => 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 200,
      color: Colors.white,
      padding: const EdgeInsets.all(6),
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    petDescription.nome,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    petDescription.raca,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
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
                          petDescription.localizacao,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topEnd,
              height: 100,
              width: 100,
            ),
            Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.topEnd,
                  height: 32,
                  width: 100,
                  child: const Icon(
                    Icons.male_sharp,
                    size: 32,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  color: Colors.white,
                  alignment: AlignmentDirectional.topEnd,
                  height: 40,
                  width: 100,
                  child: Text(
                    ' ${petDescription.idade}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
