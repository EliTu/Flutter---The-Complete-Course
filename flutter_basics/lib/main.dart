import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var currentQuestionIndex = 0;
  void onAnswerButtonClock() {
    setState(() {
      currentQuestionIndex += 1;
    });
    print(currentQuestionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
            Text(currentQuestionIndex <= questions.length
                ? questions[currentQuestionIndex]
                : null),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: onAnswerButtonClock,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: onAnswerButtonClock,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: onAnswerButtonClock,
            )
          ],
        ),
        backgroundColor: Color(0xFFECECEC),
      ),
    );
  }
}
