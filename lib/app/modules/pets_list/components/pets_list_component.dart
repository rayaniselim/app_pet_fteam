import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

class PetsListComponent extends StatefulWidget {
  const PetsListComponent({Key? key}) : super(key: key);

  @override
  State<PetsListComponent> createState() => _PetsListComponentState();
}

class _PetsListComponentState extends State<PetsListComponent> {
  /// rx = reativo, valor dinamico q altera o estado da tela
  final rxSelected = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int indexAtual) {
          /// Builder repsonsavel por alterar o estado da tela
          return ValueListenableBuilder(
            valueListenable: rxSelected,
            builder: (context, value, _) {
              return Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 0,
                  right: 24,
                  bottom: 20,
                ),
                child: PetCardComponent(
                  pet: petsListData[indexAtual],
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
