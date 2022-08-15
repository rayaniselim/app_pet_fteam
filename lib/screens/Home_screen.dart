import 'package:app_pet_fteam/components/Item_pet_components.dart';
import 'package:app_pet_fteam/components/category_list_component.dart';
import 'package:app_pet_fteam/data/list_pet_data.dart';
import 'package:flutter/material.dart';
import '../components/home_app_bar_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(76),
        child: AppBarComponents(),
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
              child: PetCategoriesListComponent(),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
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
                    return ItemPetComponents(
                      petPage: listPetData[index],
                      onTap: () {},
                    );
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
