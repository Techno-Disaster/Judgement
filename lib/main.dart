import 'package:flutter/material.dart';
import 'package:jayesh/quiz.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 20},
        {"text": "Red", "score": 15},
        {"text": "Orange", "score": 10},
        {"text": "Violet", "score": 5},
        {"text": "White", "score": 0},
      ],
    },
    {
      "questionText": "What's your choice for an IDE?",
      "answers": [
        {"text": "Jetbrains IDE", "score": 15},
        {"text": "Vscode", "score": 20},
        {"text": "Atom  ", "score": 5},
      ],
    },
    {
      "questionText": "According to you which has the best camera?",
      "answers": [
        {"text": "Oneplus", "score": 10},
        {"text": "Xiaomi", "score": 5},
        {"text": "Pixel", "score": 20},
        {"text": "Apple", "score": 15},
        {"text": "Samsung", "score": 10}
      ],
    },
    {
      "questionText": "What's your favorite Hobby?",
      "answers": [
        {"text": "Photography", "score": 10},
        {"text": "Editing", "score": 5},
        {"text": "Studying", "score": 5},
        {"text": "Sleeping", "score": 20},
        {"text": "Coding", "score": 15},
      ],
    },
    {
      "questionText": "What's your favorite Movie Franchise?",
      "answers": [
        {"text": "John Wick", "score": 15},
        {"text": "Hunger Games", "score": 10},
        {"text": "Sherlock Holmes", "score": 10},
        {"text": "1920", "score": 0},
        {"text": "Marvel", "score": 20},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Answer Chosen");

    if (questionIndex < questions.length) {
      print("We have more Questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          centerTitle: true,
          title: Text(
            "Judging Your Sorry Ass",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
        backgroundColor: Colors.blueGrey[900],
      ),
    );
  }
}
