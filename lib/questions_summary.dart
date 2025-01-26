import 'package:flutter/material.dart';
import 'package:quiz_app/question_identifier.dart';
import 'package:quiz_app/question_summary.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIdentifier(data),
                SizedBox(
                  width: 30,
                ),
                QuestionSummary(data),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
