import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImagesDescriptionScreen extends StatelessWidget {
  const ImagesDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              color: Colors.purple,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.purple,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.purple,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.purple,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.purple,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
    );
  }
}
