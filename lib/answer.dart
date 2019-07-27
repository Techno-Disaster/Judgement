import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function storepointerfromanswerQuestion;
  final String answerText;

  Answer(this.storepointerfromanswerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: OutlineButton(
        color: Colors.black,
        textColor: Colors.blue,
        child: Text(answerText),
        onPressed: storepointerfromanswerQuestion,
      ),
    );
  }
}
