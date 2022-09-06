import 'package:flutter/material.dart';

/// App Bar Home

class CustomSliverAppBarComponent extends StatelessWidget {
  const CustomSliverAppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.13,
      // toolbarHeight: 89,
      floating: true,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 22,
          top: 40,
          bottom: 23,
        ),
        child: Image.asset(
          'assets/images/icons/png/line.png',
          color: Colors.grey[800],
          width: MediaQuery.of(context).size.width * 0.08,
          height: MediaQuery.of(context).size.height * 0.038,
          alignment: Alignment.bottomLeft,
        ),
      ),
      centerTitle: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Location',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Cameron St., Boston',
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
          padding: EdgeInsets.all(16),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              'assets/images/icons/png/girl.png',
            ),
          ),
        ),
      ],
    );
  }
}
