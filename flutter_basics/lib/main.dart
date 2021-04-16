import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;
  List<String> answers = ['Woo', 'Yee', 'Haw'];

  void _onAnswerButtonClock() {
    setState(() {
      _currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      'What\'s your favoriete color?',
      'What\'s your favoriete animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: Column(
          children: [
            Question(_questions[_currentQuestionIndex]),
            for (var answer in answers) Answer(_onAnswerButtonClock, answer)
          ],
        ),
        backgroundColor: Color(0xFFECECEC),
      ),
    );
  }
}
