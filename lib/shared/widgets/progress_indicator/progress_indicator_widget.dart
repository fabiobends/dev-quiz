import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double percentage;

  const ProgressIndicatorWidget({Key? key, required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: percentage,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(
        AppColors.chartPrimary,
      ),
    );
  }
}
