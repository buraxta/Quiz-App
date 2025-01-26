import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;

  final List<String> selectedAnswer;

  final void Function(String screen) switchScreen;

  const QuestionsScreen(
      this.onSelectAnswer, this.selectedAnswer, this.switchScreen,
      {super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentIndex = 0;

  void nextQuestion(String answer) {
    setState(() {
      if (currentIndex < questions.length - 1) {
        currentIndex++;
        widget.onSelectAnswer(answer);
      } else {
        widget.switchScreen('results-screen');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuesiton = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuesiton.question,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ...currentQuesiton.getShuffledAnswers().map(
                (answer) => AnswerButton(answer, () => nextQuestion(answer)))
          ],
        ),
      ),
    );
  }
}
