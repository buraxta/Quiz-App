import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";
  final List<String> selectedAnswers = [];

  void chooseAnswer(String selectedAnswer) {
    selectedAnswers.add(selectedAnswer);
  }

  void switchScreen(String screen) {
    setState(() {
      print("Switching to $screen");
      activeScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
            ),
          ),
          child: activeScreen == "start-screen"
              ? StartScreen(switchScreen)
              : activeScreen == "results-screen"
                  ? ResultsScreen(selectedAnswers, switchScreen)
                  : QuestionsScreen(
                      chooseAnswer, selectedAnswers, switchScreen),
        ),
      ),
    );
  }
}
