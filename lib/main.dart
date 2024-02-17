import 'package:flutter/material.dart';
import 'package:inventory_move/pages/home.dart';



void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        // '/': (context) => const Loading(),
        'home': (context) => const Home(),
        // 'admin': (context) => const Admin(),
      },
    );
  }
}