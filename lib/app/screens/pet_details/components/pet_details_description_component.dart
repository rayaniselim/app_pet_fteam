import 'package:app_pet_fteam/app/app.dart';
import 'package:flutter/material.dart';

/// texto da descricao
class PetDetailsDescriptionComponent extends StatelessWidget {
  const PetDetailsDescriptionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        top: 0,
        right: 24,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'About',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.8,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 104,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "She is shy at first, but will warm up once she's comfortable. She is not a ranch dog who guards animals and property as she would rather be with her people;  but she is comfortable around animals.  She plays well with other dogs. ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.normal,
                            wordSpacing: 3,
                            letterSpacing: -0.1,
                            height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  listGradient(position: PositionType.top, height: 10),
                  listGradient(position: PositionType.bottom, height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
