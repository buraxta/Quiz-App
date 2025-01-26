import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final Map<String, Object> data;

  const QuestionIdentifier(
    this.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: data["correct_answer"] == data["user_answer"]
            ? Colors.green[200]
            : Colors.purple[300],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        ((data["question_index"] as int) + 1).toString(),
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
