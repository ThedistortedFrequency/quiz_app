import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() answerhandler;
  final String answerText;
  const Answer(this.answerhandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerhandler,
        child: Text(answerText),
      ),
    );
  }
}
