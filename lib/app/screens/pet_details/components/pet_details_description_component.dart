import 'package:app_pet_fteam/app/dev_mode/dev_constantes.dart';
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
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 36,
            width: 400,
            color: Colors.transparent,
            child: const Text(
              'About',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Text(
            "She is shy at first, but will warm up once she's comfortable. She is not a ranch dog who guards animals and property as she would rather be with her people;  but she is comfortable around animals.  She plays well with other dogs. " +
                DevConstantes.testTextOverflow,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
                fontWeight: FontWeight.normal,
                wordSpacing: 3,
                letterSpacing: -0.1,
                height: 1.5),
            maxLines: 6,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
