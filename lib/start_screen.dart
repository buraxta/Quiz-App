import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(123, 255, 255, 255),
          width: double.infinity,
          height: 300,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: () => switchScreen('questions-screen'),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          label: Text(
            "Start Quiz",
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
