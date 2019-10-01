import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 40) {
      resultText = "Nikal, pehle fursat me nikal";
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(top: 250),
            color: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
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
          MaterialButton(
            child: Text("Retry my Judgement"),
            colorBrightness: Brightness.light,
            color: Colors.red,
            textColor: Colors.white,
            onPressed: resetQuizHandler,
          )
        ],
      ),
    );
  }
}
