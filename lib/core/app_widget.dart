import 'package:DevQuiz/screens/home/home_screen.dart';
//import 'package:DevQuiz/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}