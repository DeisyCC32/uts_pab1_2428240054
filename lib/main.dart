import 'package:flutter/material.dart';
import 'data/kuliner_lombok_data.dart';
import 'screens/detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ayam Taliwang',
      home: DetailScreen(
        modelKuliner: kulinerList[0],
      ),
    );
  }
}