import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "what's Your favorite color?",
      "what's your favorite dish",
      "what's your favorite bike",
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Question(question[_questionIndex]),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: const Text("Answer 1"),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: const Text("Answer 2"),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: const Text("Answer 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
