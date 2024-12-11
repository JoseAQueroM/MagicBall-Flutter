import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomBall = 1;

  void imagenAleatoria() {
    setState(() {
      randomBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 25, 72, 110),
          appBar: AppBar(
            title: Text(
              'Magic Ball',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 26, 104, 168),
          ),
          body: Center(
            child: Container(
              child: InkWell(
                onTap: () {
                  imagenAleatoria();
                },
                child: Image(image: AssetImage('images/ball$randomBall.png')),
              ),
            ),
          )),
    );
  }
}
