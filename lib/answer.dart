import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() answerhandler;
  final String answerText;
  const Answer(this.answerhandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: const EdgeInsets.all(7),
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: answerhandler,
          child: Text(answerText),
        ),
      ),
    );
  }
}
