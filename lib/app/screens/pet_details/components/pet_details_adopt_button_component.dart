import 'package:flutter/material.dart';

/// botao de adopt da page de descricao
class PetDetailsAdoptButtonComponent extends StatelessWidget {
  const PetDetailsAdoptButtonComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.58,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(64),
        ),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/icons/png/paws.png',
            height: MediaQuery.of(context).size.height * 0.027,
            color: Colors.white,
          ),
          const SizedBox(
            width: 17,
          ),
          const Text(
            'ADOPT',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
