import 'package:flutter/material.dart';

class PetDetailsDescriptionComponent extends StatelessWidget {
  const PetDetailsDescriptionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 36,
            width: 400,
            color: Colors.white,
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
          Container(
            height: 114,
            width: 400,
            color: Colors.white,
            // padding: const EdgeInsets.all(10),
            child: Text(
              "She is shy at first, but will warm up once she's comfortable. She is not a ranch dog who guards animals and property as she would rather be with her people;  but she is comfortable with animals.  She plays well with other dogs. ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[500],
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
