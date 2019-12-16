import 'package:flutter/material.dart';
import 'ArenaColorTheme.dart';
import 'ArenaController.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: ArenaController(),
    );
  }
}