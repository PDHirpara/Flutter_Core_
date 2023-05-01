import 'package:app1/PR1/test2.dart';
import 'package:flutter/material.dart';
import '8/emi_calculator.dart';
import 'PR1/test1.dart';

void main() {
  runApp(   const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: test2(),
    );
  }
}

