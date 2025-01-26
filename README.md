# Flutter Quiz App

A simple quiz application developed to practice and improve Flutter and Dart skills. This app is designed to help learners understand core Flutter concepts through interactive quizzes.

## Features
- **Quiz Questions**: Answer multiple-choice questions related to Flutter and Dart.
- **Result Screen**: View the number of correct and incorrect answers at the end of the quiz.
- **Color-Coded Answers**: Correct answers are highlighted in green, while incorrect ones are highlighted in red.
- **Restart Quiz**: Option to restart the quiz and try again.
- **Widget Practice**: Demonstrates the use of both `StatelessWidget` and `StatefulWidget` for building the UI and managing state.

## Screenshots
Below are some screenshots of the app in action:
<div style="display: flex; justify-content: space-between;">
   <img src="https://github.com/buraxta/Quiz-App/blob/master/ss/1.png?raw=true" alt="Home Screen" width="30%" />
   <img src="https://github.com/buraxta/Quiz-App/blob/master/ss/2.png?raw=true" alt="Quiz Screen" width="30%" />
   <img src="https://github.com/buraxta/Quiz-App/blob/master/ss/3.png?raw=true" alt="Result Screen" width="30%" />
</div>

## How It Works
1. **Home Screen**: The app starts with a simple home screen where users can begin the quiz by pressing the "Start Quiz" button.
2. **Quiz Screen**: Users are presented with a series of questions. Each question has multiple-choice answers. When an answer is selected, the app immediately checks if it is correct or incorrect.
3. **Result Screen**: After completing all questions, users are taken to the result screen. Here, they can see:
   - The total number of correct and incorrect answers.
   - A detailed breakdown of each question, with correct answers highlighted in green and incorrect ones in red.
4. **Restart Quiz**: Users can restart the quiz by pressing the "Restart Quiz" button on the result screen.

## Widgets Used
- **StatelessWidget**: Used for static screens like the home screen and result screen.
- **StatefulWidget**: Used for the quiz screen to manage the state of the quiz (e.g., current question, selected answer, score).

## Learning Outcomes
This project is a great way to practice:
- Building UIs with Flutter widgets.
- Managing state in Flutter using `StatefulWidget`.
- Handling user interactions like button presses.
- Navigating between screens using `Navigator`.
- Structuring and organizing code in a Flutter project.

## How to Run
1. Clone this repository.
2. Open the project in your preferred IDE (e.g., Android Studio, VS Code).
3. Run `flutter pub get` to install dependencies.
4. Use `flutter run` to launch the app on an emulator or physical device.

## Contribution
Feel free to contribute to this project by opening issues or submitting pull requests. Your feedback and improvements are always welcome!

## License
This project is open-source and available under the MIT License.

---

Happy coding! 🚀
