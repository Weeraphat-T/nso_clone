import 'package:flutter/material.dart';
import 'package:nso_clone/screens/home_screen.dart';
import 'package:nso_clone/widgets/header_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Modern Profile 2024",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
