import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World',
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Tugas Pertama Flutter',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
          ),
          body: const Center(
            child: Text(
              'Hanif Aji Prasetyo\n2141720090',
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
