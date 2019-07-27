import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 40) {
      resultText = "Nikal bhsdk!, pehle fursat me nikal";
     } else if (resultScore <= 50) {
      resultText = "Try harder bich";
    } else if (resultScore <= 60) {
      resultText = "You are just.... OK";
    } else if (resultScore <= 70) {
      resultText = "You are .... OK";
    } else if (resultScore <= 85) {
      resultText = "You are pretty likeable";
    } else if (resultScore <= 95) {
      resultText = "Almost there you should try again";
    } else {
      resultText = "You probably aced it";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Container(
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      resultPhrase,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          RaisedButton(
            child: Text("Retry my Judgement"),
            color: Colors.white,
            textColor: Colors.blue[900],
            onPressed: resetQuizHandler,
          )
        ],
      ),
    );
  }
}
