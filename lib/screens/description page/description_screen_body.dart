import 'package:flutter/material.dart';

class PetDescriptionScreenBody extends StatelessWidget {
  const PetDescriptionScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 36,
          width: 400,
          color: Colors.white,
          padding: const EdgeInsets.only(
            left: 10,
            top: 3,
            bottom: 0,
          ),
          child: const Text(
            'About',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          height: 114,
          width: 400,
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: const Text(
            "She is shy at first, but will warm up once she's comfortable. She is not a ranch dog who guards animals and property as she would rather be with her people;  but she is comfortable with animals.  She plays well with other dogs. ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          height: 80,
          width: 220,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 251, 96, 49),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(64),
            ),
          ),
          alignment: Alignment.center,
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Image.asset(
                    'assets/icon/images/paws.png',
                    height: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'ADOPT',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
