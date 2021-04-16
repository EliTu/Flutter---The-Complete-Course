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
  var _questionObjects = [
    {
      'question': 'What\'s your favoriete color?',
      'answers': ['Blue', 'Red', 'Green', 'White']
    },
    {
      'question': 'What\'s your favoriete animal?',
      'answers': ['Cat', 'Dog', 'Dolphin', 'Rhino']
    },
    {
      'question': 'Who\s your favoriete Roman emperor?',
      'answers': ['Augustus', 'Marcus Aurelius', 'Trajan', 'Vespasian']
    }
  ];

  void _onAnswerButtonClock() {
    setState(() {
      _currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: Column(
          children: [
            Question(_questionObjects[_currentQuestionIndex]['question']),
            for (var answer in _questionObjects[_currentQuestionIndex]
                ['answers'])
              Answer(_onAnswerButtonClock, answer)
          ],
        ),
        backgroundColor: Color(0xFFECECEC),
      ),
    );
  }
}
