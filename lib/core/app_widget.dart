import 'package:DevQuiz/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
