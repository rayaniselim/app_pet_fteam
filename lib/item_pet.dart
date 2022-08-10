import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemPet extends StatefulWidget {
  String nome;
  String raca;
  String idade;
  String sexo;
  String image;
  String localizacao;

  ItemPet({
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
      height: 400,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(Icons.favorite_border, color: Colors.grey, size: 35),
          Row(
            children: [
              Container(
                height: 130,
                width: 130,
//https://macoratti.net/19/09/flut_circimg2.htm fonte
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('${widget.image}'),
                  ),
                ),
              ),
            ],
          ),
          Text('${widget.nome}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
          Text('${widget.raca}'),
          Text('${widget.sexo}, ${widget.idade}'),
          Icon(Icons.location_on_sharp, color: Colors.deepOrange, size: 23),
          Text('${widget.localizacao}'),
        ],
      ),
    );
  }
}
