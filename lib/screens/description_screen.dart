import 'package:flutter/material.dart';
import '../data/list_pet_data.dart';
import '../components/description_pet_preview.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Column(
          children: const [
            Text(''),
          ],
        ),
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
      body: Container(
        height: 180,
        width: 390,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: DescriptionPetPreview(petDescription: listPetData[1]),
      ),
    );
  }
}
