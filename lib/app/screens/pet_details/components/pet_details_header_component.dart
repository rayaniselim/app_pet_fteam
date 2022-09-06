import 'package:app_pet_fteam/core/core.dart';
import 'package:app_pet_fteam/core/utils/string_extensions.dart';
import 'package:flutter/material.dart';
import '../../../dev_mode/dev_constantes.dart';

class PetDetailsHeaderComponent extends StatelessWidget {
  final PetModel pet;
  const PetDetailsHeaderComponent({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        top: 8,
        right: 24,
        bottom: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pet.name,
                  // + DevConstantes.testTextOverflow,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 8),
                Container(
                  // width: 90,
                  // color: Colors.yellow,
                  child: Text(
                    pet.race,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: Theme.of(context).primaryColor,
                      size: 18,
                    ),
                    Expanded(
                      child: Text(
                        pet.localization,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[500],
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                pet.sex.toLowerCase() == 'female'
                    ? 'assets/images/icons/png/female.png'
                    : 'assets/images/icons/png/male.png',
                height: 28,
                width: 28,
                color: Colors.grey[500],
              ),
              const SizedBox(height: 4),
              Container(
                // width: 80,
                // color: Colors.yellow,
                child: Text(
                  /// O "truncate" ele tem a mesma função que o (ellipsis),
                  /// que é cortar uma string após ela atingir um certo tamanho.
                  /// O parrametro "overflow - ellipsis" ele corta a String basead no width(largura) do Widget pai.
                  /// o "truncate" ele corta a String baseado na quantidade de caracteres dentro da String.
                  pet.age.truncate(length: 13),
                  // pet.age,
                  // overflow: TextOverflow.ellipsis,
                  // maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
