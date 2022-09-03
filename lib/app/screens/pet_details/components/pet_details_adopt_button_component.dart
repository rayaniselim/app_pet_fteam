import 'package:flutter/material.dart';

/// botao de adopt da page de descricao
class PetDetailsAdoptButtonComponent extends StatelessWidget {
  const PetDetailsAdoptButtonComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 220,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(64),
        ),
      ),
      alignment: Alignment.center,
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Image.asset(
                'assets/images/icons/png/paws.png',
                height: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'ADOPT',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
