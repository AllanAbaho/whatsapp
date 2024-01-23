import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // theme: ThemeData.dark(),
    );
  }
}
