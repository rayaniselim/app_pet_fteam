import 'package:flutter/material.dart';

class ItemPet extends StatefulWidget {
  String nome;
  String raca;
  String idade;
  String sexo;
  String image;

  ItemPet(
      {Key? key,
      required this.nome,
      required this.raca,
      required this.idade,
      required this.sexo,
      required this.image})
      : super(key: key);

  @override
  State<ItemPet> createState() => _ItemPetState();
}

class _ItemPetState extends State<ItemPet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child: Image.asset('${widget.image}'),
          ),
          Text('${widget.nome}'),
          Text('${widget.raca}'),
          Text('${widget.idade}'),
          Text('${widget.sexo}'),
        ],
      ),
    );
  }
}
