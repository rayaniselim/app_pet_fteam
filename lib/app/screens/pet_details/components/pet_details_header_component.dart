import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

// detalhes do pet abaixo da app bar
class PetDetailsHeaderComponent extends StatelessWidget {
  const PetDetailsHeaderComponent({Key? key}) : super(key: key);

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
                  petsListData[0].name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 8),
                Text(
                  petsListData[0].race,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_sharp,
                      color: Colors.deepOrange,
                      size: 18,
                    ),
                    Text(
                      petsListData[0].localization,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/icons/png/female.png',
                height: 28,
                width: 28,
                color: Colors.grey[500],
              ),
              const SizedBox(height: 4),
              Text(
                ' ${petsListData[0].age}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
