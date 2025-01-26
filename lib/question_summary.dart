import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final Map<String, Object> data;

  const QuestionSummary(
    this.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data["question"] as String,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            "Your Answer: ${data["user_answer"]}",
            style: TextStyle(
              color: Colors.purple[200],
              fontSize: 16,
            ),
            textAlign: TextAlign.start,
          ),
          Text("Correct Answer: ${data["correct_answer"]}",
              style: TextStyle(
                color: Colors.green[200],
                fontSize: 16,
              )),
        ],
      ),
    );
  }
}
