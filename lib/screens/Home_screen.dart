import 'package:app_pet_fteam/components/Item_pet_components.dart';
import 'package:app_pet_fteam/components/app_bar_components.dart';
import 'package:app_pet_fteam/components/list_pet_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(76),
        child: AppBarComponents(),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width,
              //  child: const AppBarComponents(),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height * 0.86) - 89,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listPetData.length,
                  padding: const EdgeInsets.only(
                    left: 32,
                    top: 0,
                    right: 32,
                    bottom: 32,
                  ),
                  itemBuilder: (context, index) {
                    return ItemPetComponents(
                      pet: listPetData[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
