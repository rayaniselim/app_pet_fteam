import 'package:app_pet_fteam/app/app.dart';
import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

class PetDetailsImagesComponent extends StatelessWidget {
  final PetModel pet;

  const PetDetailsImagesComponent({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 32,
            ),
            child: PetDetailsPhotosListComponent(
              pet: pet,
            ),
          ),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        Expanded(
          child:
              //  LayoutBuilder(
              //   builder: (BuildContext context, BoxConstraints constraints) {
              //     return
              Positioned(
            right: 100,
            child: Container(
              transform: Matrix4.translationValues(300 * .3, 0.0, 0.0),
              color: Colors.pink,
              child: PetDetailsStackImage(
                pet: pet,
                widgetWidth: 300,
                //   );
                // },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
