class CategoryPet {
  final String especie;
  final String icone;

  const CategoryPet({
    required this.especie,
    required this.icone,
  });
}

const List<CategoryPet> categoryPetList = [
  CategoryPet(
    especie: 'Dog',
    icone: ('assets/icon/images/dog.png'),
  ),
  CategoryPet(
    especie: 'Cat',
    icone: ('assets/icon/images/cat.png'),
  ),
  CategoryPet(
    especie: 'Bird',
    icone: ('assets/icon/images/bird.png'),
  ),
];
