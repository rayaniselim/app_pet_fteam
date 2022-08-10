import 'package:app_pet_fteam/item_pet.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const SizedBox(
          child: Text('Pets'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView.count(
          crossAxisCount: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            ItemPet(
              nome: 'Flora',
              raca: 'Chihuahua',
              idade: '1',
              sexo: 'Femenino',
              image: 'assets/image/c1.png',
            ),
            ItemPet(
              nome: 'Flora',
              raca: 'Chihuahua',
              idade: '1',
              sexo: 'Femenino',
              image: 'assets/image/c1.png',
            ),
            ItemPet(
              nome: 'Flora',
              raca: 'Chihuahua',
              idade: '1',
              sexo: 'Femenino',
              image: 'assets/image/c1.png',
            ),
            ItemPet(
              nome: 'Flora',
              raca: 'Chihuahua',
              idade: '1',
              sexo: 'Femenino',
              image: 'assets/image/c1.png',
            ),
            ItemPet(
              nome: 'Flora',
              raca: 'Chihuahua',
              idade: '1',
              sexo: 'Femenino',
              image: 'assets/image/c1.png',
            ),
          ],
        ),
      ),
    );
    // body: Center(
    //   child: Container(
    //     color: const Color.fromRGBO(255, 255, 255, 1),
    //     width: 350,
    //     height: 150,
    //
    //     ),
    //   ),
    // );
    //   ),
    // );

    // Container( color: Colors.grey[200], );
  }
}
