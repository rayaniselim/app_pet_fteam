import 'package:app_pet_fteam/app/app.dart';
import 'package:flutter/material.dart';

class PetsListScreen extends StatelessWidget {
  const PetsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          /// Aqui se encontra o AppBar do tipo Sliver
          const CustomSliverAppBarComponent(),

          /// Aqui se encontra o componente responsavel
          /// por mostrar a lista de categorias de pets
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              child: const PetsCategoriesListComponent(),
            ),
          ),

          /// Lista de pets disponiveis para adoção
          const PetsListComponent(),
        ],
      ),
    );
  }
}
