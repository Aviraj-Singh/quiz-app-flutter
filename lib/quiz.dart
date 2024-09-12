import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  // Another way to initialize active screen without ternary
  // Widget? activeScreen;

  @override
  void initState() {
    activeScreen = 'questions-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 132, 162, 0),
                Color.fromARGB(255, 90, 109, 82),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
