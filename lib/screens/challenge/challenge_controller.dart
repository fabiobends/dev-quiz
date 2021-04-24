import 'package:flutter/foundation.dart';

class ChallengeController {
  final currentScreenNotifier = ValueNotifier<int>(1);
  int get currentScreen => currentScreenNotifier.value;
  set currentScreen(int value) => currentScreenNotifier.value = value;

  int qtdAnswerRight = 0;
}
