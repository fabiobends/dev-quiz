import 'package:DevQuiz/screens/challenge/challenge_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: ChallengeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
