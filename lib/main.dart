import 'package:flutter/material.dart';
import 'package:groceryapp/mainscreen.dart';
import 'package:groceryapp/welcomescreen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
   // WelcomeScreen(),
  // Rough()
  MainScreen(),
    );
  }
}
