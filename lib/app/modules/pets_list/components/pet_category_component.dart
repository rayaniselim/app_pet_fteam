import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

class PetCategoryComponent extends StatelessWidget {
  final PetCategoryModel petCategory;
  final bool selectedItem;
  final VoidCallback onTap;

  const PetCategoryComponent({
    Key? key,
    required this.petCategory,
    required this.selectedItem,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: selectedItem == true ? Colors.deepOrange : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                petCategory.icon,
                color: selectedItem == true ? Colors.white : null,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              petCategory.race,
              style: TextStyle(
                color: selectedItem == true ? Colors.white : null,
                letterSpacing: -0.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
