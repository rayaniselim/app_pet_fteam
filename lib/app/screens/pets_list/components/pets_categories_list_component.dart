import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

///[DOCUMENTATION] Componentes dos botoes de categoria especies abaixo da app bar

class PetsCategoriesListComponent extends StatelessWidget {
  const PetsCategoriesListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///[DOCUMENTATION] rx = reativo, valor dinamico q altera o estado da tela
    final rxSelected = ValueNotifier<int>(0);

    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.grey[200],
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: petsCategoriesListData.length,
          itemBuilder: (context, indexAtual) {
            return Padding(
              padding: EdgeInsets.only(
                left: indexAtual == 0 ? 24 : 16,
                top: 24,
                right:

                    ///[DOCUMENTATION] lista de icones da categoria pet
                    indexAtual == (petsCategoriesListData.length - 1) ? 24 : 0,
                bottom: 24,
              ),
              child: Row(
                children: [
                  indexAtual == 0
                      ? const AspectRatio(
                          aspectRatio: 1,

                          ///[DOCUMENTATION] icone settings da lista de categoria
                          child: PetSettingsItemComponent(),
                        )
                      : const SizedBox(),
                  SizedBox(
                    ///[DOCUMENTATION] espaco a direita para o componente settings
                    width: indexAtual == 0 ? 20 : 0,
                  ),

                  ///[DOCUMENTATION] Builder repsonsavel por alterar o estado da tela
                  ValueListenableBuilder(
                    valueListenable: rxSelected,
                    builder: (context, value, _) {
                      ///[DOCUMENTATION] Componentes da categoria especies abaixo da app bar
                      return PetCategoryComponent(
                        petCategory: petsCategoriesListData[indexAtual],
                        selectedItem: rxSelected.value == indexAtual,
                        onTap: () => rxSelected.value = indexAtual,
                      );
                    },
                  ),
                ],
              ),
            );
          }),
    );
  }
}
