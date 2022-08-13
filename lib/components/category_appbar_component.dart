import 'package:app_pet_fteam/model/category_pet_model.dart';
import 'package:flutter/material.dart';

class CategoryAppBarComponent extends StatelessWidget {
  final CategoryPet categoryPetModel;
  final bool itemSelecionado;
  final VoidCallback onTap;

  const CategoryAppBarComponent({
    Key? key,
    required this.itemSelecionado,
    required this.categoryPetModel,
    required this.onTap,
  }) : super(key: key);

  get index => 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: itemSelecionado == true
            ? Colors.deepOrange[400]
            : Colors.white, // mudar a cor do item selecionado
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.3, // proporcao da tela
            child: Image.asset(categoryPetModel.icone),
          ),
          const SizedBox(width: 6),
          Text(
            categoryPetModel.especie,
            style: const TextStyle(
              letterSpacing: -0.8, // espacamento no texto
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
