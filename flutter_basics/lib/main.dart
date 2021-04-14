import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;

  void _onAnswerButtonClock() {
    setState(() {
      _currentQuestionIndex += 1;
    });
    print(_currentQuestionIndex);
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
            Text(_currentQuestionIndex <= _questions.length
                ? _questions[_currentQuestionIndex]
                : null),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _onAnswerButtonClock,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _onAnswerButtonClock,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _onAnswerButtonClock,
            )
          ],
        ),
        backgroundColor: Color(0xFFECECEC),
      ),
    );
  }
}
