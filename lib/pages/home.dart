import 'dart:async';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[300, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
        appBar: AppBar(
          title: const Text('Inventory Move'),
          backgroundColor: Colors.white,
        ),
      body: SafeArea(
        child: Center(
          child:
          ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index % colorCodes.length]],
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              }
          ),
        ),
      ),
    );
  }
}