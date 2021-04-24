import 'package:DevQuiz/screens/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/screens/challenge/widgets/quiz/quiz_widget.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

import 'challenge_controller.dart';
import 'widgets/next_button/next_button_widget.dart';

class ChallengeScreen extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengeScreen({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  final controller = ChallengeController();
  final screenController = PageController();

  @override
  void initState() {
    screenController.addListener(() {
      controller.currentScreen = screenController.page!.toInt() + 1;
    });
    super.initState();
  }

  void nextScreen() {
    if (controller.currentScreen < widget.questions.length) {
      screenController.nextPage(
          duration: Duration(milliseconds: 100), curve: Curves.linear);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(88),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                ValueListenableBuilder<int>(
                  valueListenable: controller.currentScreenNotifier,
                  builder: (context, value, _) => QuestionIndicatorWidget(
                    currentScreen: value,
                    length: widget.questions.length,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: screenController,
          children: widget.questions
              .map(
                (el) => QuizWidget(
                  question: el,
                  onChange: nextScreen,
                ),
              )
              .toList(),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ValueListenableBuilder<int>(
              valueListenable: controller.currentScreenNotifier,
              builder: (context, value, _) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (value < widget.questions.length)
                    Expanded(
                      child: NextButtonWidget.white(
                        label: "Pular",
                        onTap: nextScreen,
                      ),
                    ),
                  if (value == widget.questions.length) SizedBox(width: 7),
                  if (value == widget.questions.length)
                    Expanded(
                      child: NextButtonWidget.green(
                        label: "Confirmar",
                        onTap: () {},
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
