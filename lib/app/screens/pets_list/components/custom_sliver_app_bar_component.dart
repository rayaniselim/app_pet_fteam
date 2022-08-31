import 'package:app_pet_fteam/app/dev_mode/dev_constantes.dart';
import 'package:flutter/material.dart';

/// App Bar Home

class CustomSliverAppBarComponent extends StatelessWidget {
  const CustomSliverAppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 86,
      floating: true,
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
          'assets/images/icons/png/line.png',
          color: Colors.grey[800],
          height: 24,
        ),
      ),
      title: Column(
        children: [
          Text(
            'Location',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Cameron St., Boston' + DevConstantes.testTextOverflow,
            overflow: TextOverflow.ellipsis,
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
              'assets/images/icons/png/girl.png',
            ),
          ),
        ),
      ],
    );
  }
}
