import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text('Test App'),
        ),
        body: Container(
          child: const Text('Test T1'),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}