import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> choosenAnswers;

  final void Function(String screen) switchScreen;

  const ResultsScreen(this.choosenAnswers, this.switchScreen, {super.key});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summaryData.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "user_answer": choosenAnswers[i],
      });
    }
    return summaryData;
  }

  void restartQuiz() {
    choosenAnswers.clear();
    switchScreen("start-screen");
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data["correct_answer"] == data["user_answer"])
        .length;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 78, 13, 151),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $numCorrectQuestions out of $numTotalQuestions correctly!",
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 234, 215, 240),
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              QuestionsSummary(summaryData),
              SizedBox(
                height: 20,
              ),
              TextButton.icon(
                label: Text("Restart Quiz",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                onPressed: restartQuiz,
                icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
