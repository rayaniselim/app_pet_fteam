import 'package:app_pet_fteam/app/app.dart';
import 'package:flutter/material.dart';

/// page principal
class PetsListScreen extends StatelessWidget {
  const PetsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,

      /// cria   os efeitos de rolagem
      body: CustomScrollView(
        slivers: [
          /// AppBar do tipo Sliver (sliver é area rolavel)
          CustomSliverAppBarComponent(),

          /// lista de categorias de pets
          SliverToBoxAdapter(
            child: PetsCategoriesListComponent(),
          ),

          /// Lista de pets disponiveis para adoção
          PetsSliverListComponent(),
        ],
      ),
    );
  }
}
