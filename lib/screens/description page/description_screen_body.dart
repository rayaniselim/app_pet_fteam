import 'package:flutter/material.dart';
import '../../components/description_pet_preview.dart';
import '../../data/list_pet_data.dart';

class PetDescriptionScreenBody extends StatelessWidget {
  const PetDescriptionScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          width: 390,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: DescriptionPetPreview(petDescription: listPetData[1]),
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                color: Colors.pink,
                height: 400,
                width: 130,
              ),
              Container(
                height: 270,
                width: 260,
                padding: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(1000),
                    //     topRight: Radius.circular(500),
                    //     bottomLeft: Radius.circular(1000),
                    //     bottomRight: Radius.circular(200)),
                    color: Colors.yellow,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/c2.png'))),
              ),
            ],
          ),
        ),
        Column(
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
            Row(
              children: [
                Container(
                  height: 100,
                  width: 170,
                  color: Colors.white,
                ),
                Container(
                  height: 80,
                  width: 210,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 251, 96, 49),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                    ),
                    image: DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image: AssetImage(
                        ('assets/icon/images/paws.png'),
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'ADOPT',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // child: Image.asset(
                //   'assets/icon/images/paw.png',
                //   height: 40,
                //   width: 40,
                // ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
