import 'package:app_pet_fteam/components/Item_pet_components.dart';
import 'package:app_pet_fteam/components/category_list_component.dart';
import 'package:app_pet_fteam/data/list_pet_data.dart';
import 'package:flutter/material.dart';

import '../mobile_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(76),
        child: AppBarMobile(),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(
                // proporcao da tela é 1, ai divide em 0. x
                //   height: MediaQuery.of(context).size.height * 0.15,
                // width: MediaQuery.of(context).size.width,
                child: PetCategoriesListComponent(),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                //  height: (MediaQuery.of(context).size.height * 0.85) - 115,
                // width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: listPetData.length,
                  padding: const EdgeInsets.only(
                    left: 32,
                    top: 0,
                    right: 32,
                    bottom: 32,
                  ),
                  shrinkWrap: false,
                  itemBuilder: (context, index) {
                    return ItemPetComponents(pet: listPetData[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 18,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
