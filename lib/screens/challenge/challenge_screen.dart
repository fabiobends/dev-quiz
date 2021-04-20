import 'package:DevQuiz/screens/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/screens/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengeScreen extends StatefulWidget {
  ChallengeScreen({Key? key}) : super(key: key);

  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            child: QuestionIndicatorWidget(),
          ),
        ),
        body: QuizWidget(
          title: "O que o Flutter faz em sua totalidade?",
        ),
      ),
    );
  }
}
