import 'package:app_pet_fteam/components/category_appbar_component.dart';
import 'package:app_pet_fteam/components/settings_item_component.dart';
import 'package:app_pet_fteam/data/category_pet_list_data.dart';
import 'package:flutter/material.dart';

class PetCategoriesListComponent extends StatelessWidget {
  const PetCategoriesListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final indexSelecionado = ValueNotifier<int>(0);

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryPetList.length,
        itemBuilder: (context, indexAtual) {
          return Padding(
            padding: EdgeInsets.only(
              left: indexAtual == 0 ? 32 : 20,
              top: 28,
              right: indexAtual == (categoryPetList.length - 1) ? 32 : 0,
              bottom: 28,
            ),
            child: Row(
              children: [
                indexAtual == 0
                    ? const AspectRatio(
                        aspectRatio: 1,
                        child: SettingsItemComponent(),
                      )
                    : const SizedBox(),
                indexAtual == 0 ? const SizedBox(width: 20) : const SizedBox(),
                ValueListenableBuilder(
                    valueListenable: indexSelecionado,
                    builder: (context, value, builder) {
                      return CategoryAppBarComponent(
                        categoryPetModel: categoryPetList[indexAtual],
                        itemSelecionado: indexSelecionado.value == indexAtual,
                        onTap: () => indexSelecionado.value = indexAtual,
                      );
                    }),
              ],
            ),
          );
        });
  }
}
