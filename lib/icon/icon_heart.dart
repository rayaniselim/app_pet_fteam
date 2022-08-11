import 'package:flutter/material.dart';

class Like {
  late String iconFavorite;
}

late final String iconFavorite;
var like = Icons.favorite_border;

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Colors.white,
      height: 1,
      width: 1,
      alignment: Alignment.bottomRight,
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
          ),
          label: 'Favorite',
        ),
      ],
    ),
  );
}
