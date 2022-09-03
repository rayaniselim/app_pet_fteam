import 'dart:ui';

import 'package:flutter/material.dart';

/// appBar da page de descriçao
class PetDetailsAppBarComponent extends StatefulWidget {
  const PetDetailsAppBarComponent({Key? key}) : super(key: key);

  @override
  State<PetDetailsAppBarComponent> createState() =>
      _PetDetailsAppBarComponentState();
}

class _PetDetailsAppBarComponentState extends State<PetDetailsAppBarComponent> {
  /// rx = reativo, valor dinamico q altera o estado da tela
  final rxSelected = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.grey[500],
          size: 28,
        ),
      ),
      actions: [
        /// Builder - alterar o estado da tela
        ValueListenableBuilder(
          valueListenable: rxSelected,
          builder: (context, bool value, __) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 20.0,
                bottom: 4,
              ),
              child: InkWell(
                /// remove efeito de clic
                onTap: () {
                  rxSelected.value = !value;
                },

                child: Container(
                  padding: const EdgeInsets.only(
                      right: 9, left: 9, bottom: 0, top: 0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    value == true ? Icons.favorite : Icons.favorite_border,
                    color: Theme.of(context).primaryColor,
                    size: 28,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
