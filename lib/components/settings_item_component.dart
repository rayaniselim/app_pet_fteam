import 'package:flutter/material.dart';
// icone configuracao - app bar

class SettingsItemComponent extends StatelessWidget {
  const SettingsItemComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
// padding espaco na lateral
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        'assets/icon/images/settings.png',
        color: Colors.grey[600],
      ),
    );
  }
}
