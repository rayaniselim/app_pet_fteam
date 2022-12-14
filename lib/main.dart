import 'package:flutter/material.dart';

import 'app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: const PetsListScreen(),
    );
  }
}
