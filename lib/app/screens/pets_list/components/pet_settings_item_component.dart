import 'package:flutter/material.dart';

class PetSettingsItemComponent extends StatelessWidget {
  const PetSettingsItemComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        'assets/images/icons/png/settings.png',
        color: Colors.grey[600],
      ),
    );
  }
}
