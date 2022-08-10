import 'package:flutter/material.dart';

class ItemPet extends StatefulWidget {
  final String nome;
  final String raca;
  final String idade;
  final String sexo;
  final String image;
  final String localizacao;

  const ItemPet({
    Key? key,
    required this.nome,
    required this.raca,
    required this.idade,
    required this.sexo,
    required this.image,
    required this.localizacao,
  }) : super(key: key);

  @override
  State<ItemPet> createState() => _ItemPetState();
}

class _ItemPetState extends State<ItemPet> {
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
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.favorite_border, color: Colors.grey, size: 35),
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
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(widget.image),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    color: Colors.purple,
                    height: 100,
                    width: 100,
                    child: Text(widget.nome,
                        style: const TextStyle(
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
          Text(widget.localizacao),
        ],
      ),
    );
  }
}
