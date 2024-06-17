import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class Fluffin extends StatelessWidget {
  const Fluffin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

void main() {
  runApp(const Fluffin());
}