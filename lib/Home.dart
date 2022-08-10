import 'package:app_pet_fteam/item_pet.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const SizedBox(
          child: Text(
            'Cameron St., Boston',
            style: TextStyle(
                color: Color.fromARGB(255, 55, 52, 52),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        //floating: true,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          // crossAxisCount: 1,
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
          children: const [
            ItemPet(
              nome: 'Flora',
              raca: 'Chihuahua',
              idade: '1 years old',
              sexo: 'Female',
              image: 'assets/image/c1.png',
              localizacao: '2.5 kms away',
            ),
            SizedBox(
              height: 25,
            ),
            ItemPet(
              nome: 'Charlie',
              raca: 'Buldogue',
              idade: '1.5 years old',
              sexo: 'Male',
              image: 'assets/image/c2.png',
              localizacao: '1.6 kms away',
            ),
            SizedBox(height: 25),
            // ItemPet(
            //   nome: 'Daisy',
            //   raca: 'procurar',
            //   idade: '8 months old',
            //   sexo: 'Female',
            //   image: 'assets/image/c3.png',
            //   localizacao: '2 kms away',
            // ),
            //SizedBox(height: 25),
            // ItemPet(
            //   nome: 'Sparky',
            //   raca: 'procurar',
            //   idade: '2 years old',
            //   sexo: 'Male',
            //   image: 'assets/image/c5.png',
            //   localizacao: '1.8 kms away',
            // ),
            //SizedBox(height: 25),
            // ItemPet(
            //   nome: 'Max',
            //   raca: 'procurar',
            //   idade: '5 months old',
            //   sexo: 'Male',
            //   image: 'assets/image/c6.png',
            //   localizacao: '2.6 kms away',
            // ),
            //SizedBox(height: 25),
            // ItemPet(
            //   nome: 'Zoe',
            //   raca: 'Buldogue Frances',
            //   idade: '1.2 years old',
            //   sexo: 'Female',
            //   image: 'assets/image/c4.png',
            //   localizacao: '3.0 kms away',
            // ),
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
