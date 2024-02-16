import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';

class Quiz extends StatelessWidget {
  final List question;
  final void Function() answerQuestion;
  final int questionIndex;
  const Quiz(
      {super.key,
      required this.question,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          question[questionIndex]['questionText'].toString(),
        ),
        ...(question[questionIndex]['options'] as List).map((ans) {
          return Answer(
            answerQuestion,
            ans,
          );
        }).toList()
      ],
    );
  }
}
