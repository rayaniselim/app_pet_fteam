import 'package:flutter/material.dart';
import 'description_screen_body.dart';

class PetDescriptionScreen extends StatefulWidget {
  const PetDescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PetDescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<PetDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 32,
            top: 0,
            right: 0,
            bottom: 0,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
        ),
        leadingWidth: 40,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              left: 0,
              top: 0,
              right: 24,
              bottom: 0,
            ),
            child: Image(
              image: AssetImage(
                'assets/icon/images/heart1.png',
              ),
            ),
          ),
        ],
      ),
      body: const PetDescriptionScreenBody(),
    );
  }
}
