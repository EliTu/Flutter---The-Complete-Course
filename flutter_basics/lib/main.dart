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
  final _questionObjects = const [
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
  var _currentQuestionIndex = 0;
  var isNoMoreQuestions = false;

  void _onAnswerButtonClock() {
    if (_currentQuestionIndex >= _questionObjects.length - 1) {
      return setState(() {
        isNoMoreQuestions = true;
      });
    }
    setState(() {
      _currentQuestionIndex++;
    });
  }

  void _onResetButtonClick() {
    setState(() {
      _currentQuestionIndex = 0;
      isNoMoreQuestions = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFECECEC),
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: !isNoMoreQuestions
            ? Column(
                children: [
                  Question(_questionObjects[_currentQuestionIndex]['question']),
                  for (var answer in _questionObjects[_currentQuestionIndex]
                      ['answers'])
                    Answer(_onAnswerButtonClock, answer)
                ],
              )
            : Column(
                children: [
                  Center(
                    heightFactor: 5,
                    child: Text(
                      'Done!',
                      style: TextStyle(fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: _onResetButtonClick, child: Text('Reset'))
                ],
              ),
      ),
    );
  }
}
