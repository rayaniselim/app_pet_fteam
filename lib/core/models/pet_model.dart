import 'package:flutter/widgets.dart';

class PetModel {
  final String name;
  final String race;
  final String age;
  final String sex;
  final String photo;
  final String localization;
  final String description;
  final bool isFavorite;
  final String backgroundImage;
  final Color backgroundColor;
  final List<String> photosList;

  const PetModel({
    required this.name,
    required this.race,
    required this.age,
    required this.sex,
    required this.photo,
    required this.localization,
    required this.description,
    required this.isFavorite,
    required this.backgroundImage,
    required this.backgroundColor,
    required this.photosList,
  });
}
