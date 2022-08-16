import 'package:app_pet_fteam/core/core.dart';
import 'package:flutter/material.dart';

class PetDetailsPhotosListComponent extends StatefulWidget {
  const PetDetailsPhotosListComponent({Key? key}) : super(key: key);

  @override
  State<PetDetailsPhotosListComponent> createState() =>
      _PetDetailsPhotosListComponentState();
}

class _PetDetailsPhotosListComponentState
    extends State<PetDetailsPhotosListComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: petsListData[0].photosList.length,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 0.85,
              child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade200, width: 2.5),
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      petsListData[0].photosList[index],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 32,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white.withOpacity(0),
                  Colors.white54,
                  Colors.white,
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 42,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0),
                  Colors.white54,
                  Colors.white,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
