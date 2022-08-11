import 'package:app_pet_fteam/components/item_pet.dart';
import 'package:flutter/material.dart';

class ItemPetComponents extends StatelessWidget {
  final ItemPet pet;

  const ItemPetComponents({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              height: 1,
              width: 1,
              alignment: Alignment.bottomRight,
              child: const IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 35,
                ),
                onPressed: null,
              ),
            ),
            Row(
              //   mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 90,
                  width: 90,
//https://macoratti.net/19/09/flut_circimg2.htm fonte
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('image'),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.purple,
                      height: 100,
                      width: 100,
                      child: const Text('nome',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23)),
                      // Text(widget.raca),
                      //Text('${widget.sexo}, ${widget.idade}'),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.location_on_sharp,
                color: Colors.deepOrange, size: 23),
            const Text('localizacao'),
          ],
        ));
  }
}
