import 'package:flutter/material.dart';

class AppBarComponents extends StatelessWidget {
  const AppBarComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          top: 0,
          right: 0,
          bottom: 0,
        ),
        child: Image.asset(
          'assets/icon/images/settings.png',
          height: 30,
        ),
      ),
      title: Column(
        children: [
          Text(
            'Location',
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 12,
            ),
          ),
          Text(
            'Cameron St., Boston',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 16,
            ),
          ),
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
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/icon/images/2.png',
            ),
          ),
        ),
      ],
    );
  }
}
