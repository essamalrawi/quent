import 'package:flutter/material.dart';

void main() {
  runApp(const QuentApp());
}

class QuentApp extends StatelessWidget {
  const QuentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold());
  }
}
