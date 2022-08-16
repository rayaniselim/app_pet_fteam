import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      elevation: 0,
      leading: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.grey[500],
          size: 28,
        ),
      ),
      actions: [
        /// Builder repsonsavel por alterar o estado da tela
        ValueListenableBuilder(
            valueListenable: rxSelected,
            builder: (context, bool value, __) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 6,
                  right: 24.0,
                  bottom: 6,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    rxSelected.value = !value;
                  },
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      // width: 42,
                      // height: 42,
                      child: Icon(
                        value == true ? Icons.favorite : Icons.favorite_border,
                        color: Colors.deepOrange,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
