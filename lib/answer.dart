import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function storepointerfromanswerQuestion;
  final String answerText;

  Answer(this.storepointerfromanswerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: MaterialButton(
        color: Colors.blue,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: storepointerfromanswerQuestion,
      ),
    );
  }
}
