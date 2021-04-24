import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SplashScreen() {
      Future.delayed(Duration(seconds: 2)).then(
        (_) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.linear,
          ),
          child: Image.asset(AppImages.logo)),
    );
  }
}
