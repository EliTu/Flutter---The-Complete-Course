import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;

  void _onAnswerButtonClock(length) {
    print(_currentQuestionIndex);
    print(length);
    setState(() {
      if (_currentQuestionIndex >= length - 1) return;
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
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: () => _onAnswerButtonClock(_questions.length),
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => _onAnswerButtonClock(_questions.length),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => _onAnswerButtonClock(_questions.length),
            )
          ],
        ),
        backgroundColor: Color(0xFFECECEC),
      ),
    );
  }
}
