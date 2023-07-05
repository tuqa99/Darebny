import 'package:darebny/screens/Splash.dart';
import 'package:darebny/screens/Training%20details%20page/Training%20details%20page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrainingDetails(),
    );
  }
}
