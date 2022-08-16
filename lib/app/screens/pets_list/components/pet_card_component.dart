import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

// descricao do card da page principal
class PetCardComponent extends StatelessWidget {
  final PetModel pet;
  final VoidCallback onTap;
  final bool selectedItem;

  const PetCardComponent({
    Key? key,
    required this.pet,
    required this.onTap,
    required this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /// Aqui a gente navega para outra pagina ao clicar encima de um card de pet
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const PetDetailsScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(
                pet.photo,
                fit: BoxFit.cover,
                height: 104,
                width: 104,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        pet.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        pet.race,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${pet.sex}, ${pet.age}',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_sharp,
                            color: Colors.deepOrange,
                            size: 18,
                          ),
                          Text(
                            pet.localization,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: InkWell(
                      onTap: onTap,
                      child: Icon(
                        selectedItem == true
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: selectedItem == true
                            ? Colors.deepOrange
                            : Colors.grey[500],
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
