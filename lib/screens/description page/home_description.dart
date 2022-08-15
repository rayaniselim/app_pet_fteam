import 'package:flutter/material.dart';

import '../../components/description_pet_preview.dart';
import '../../data/list_pet_data.dart';
import 'description_screen_body.dart';
import 'images_description_screen.dart';

class HomeDescription extends StatelessWidget {
  const HomeDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 140,
              width: 390,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: DescriptionPetPreview(petDescription: listPetData[0]),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      child: ImagesDescriptionScreen(),
                      // width: 130,
                    ),
                  ),
                  // Spacer(),
                  Flexible(
                    flex: 2,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 260,
                            padding: const EdgeInsets.all(0),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image/yellow.png'),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 200,
                            color: Colors.transparent,
                            child: Image.asset(
                              'assets/image/golden2.png',
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              height: 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const PetDescriptionScreenBody(),
          ],
        ),
      ),
    );
  }
}
