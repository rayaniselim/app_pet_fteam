import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

/* Mudanca de estado (cor) dos componentes dos botoes de categoria especies 
abaixo da app bar
*/
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
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.23,
        height: MediaQuery.of(context).size.height * 0.07,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selectedItem == true
              ? Theme.of(context).primaryColor
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                petCategory.icon,
                scale: 2,
                color: selectedItem == true ? Colors.white : Colors.grey[600],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              petCategory.species,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: selectedItem == true ? Colors.white : Colors.grey[900],
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
