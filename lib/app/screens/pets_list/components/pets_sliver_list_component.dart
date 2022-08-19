import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

// os componentes da lista da page principal
class PetsSliverListComponent extends StatefulWidget {
  const PetsSliverListComponent({Key? key}) : super(key: key);

  @override
  State<PetsSliverListComponent> createState() => _PetsListComponentState();
}

class _PetsListComponentState extends State<PetsSliverListComponent> {
  /// rx = reativo, valor dinamico q altera o estado da tela
  final rxSelected = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      /// constroi os child conforme rolar a tela, reduz a memoria
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int indexAtual) {
          /// Builder repsonsavel por alterar o estado da tela
          return ValueListenableBuilder(
            valueListenable: rxSelected,
            builder: (context, value, _) {
              return Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 0,
                  right: 24,
                  bottom: 20,
                ),

                /// card dos componentes pet preview
                child: PetCardComponent(
                  pet: petsListData[indexAtual],

                  /// aqui ele vai abrir a page de descricao do pet
                  selectedItem: rxSelected.value == indexAtual,
                  onTap: () => rxSelected.value = indexAtual,
                ),
              );
            },
          );
        },
        childCount: petsListData.length,
      ),
    );
  }
}
