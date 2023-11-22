import 'package:flutter/material.dart';
import 'package:guessthenumber/pages/gamepage.dart';
import 'package:guessthenumber/pages/intropage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/GamePage' : (context) => GamePage(),
      },
    );
  }
}
