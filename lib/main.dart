import 'package:flutter/material.dart';
import 'package:news_app/Screens/fourth_screen.dart';
import 'package:news_app/Screens/home_screen.dart';
import 'package:news_app/Screens/second_screen.dart';
import 'package:news_app/Screens/home_screen.dart';
import 'package:news_app/Screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FourthScreen(),
    );
  }
}
