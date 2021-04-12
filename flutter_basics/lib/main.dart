import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void onAnswerButtonClock() {
    print('Answer');
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
            Text('The question!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: onAnswerButtonClock,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Button 2 pressed');
              },
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Button 3 pressed'),
            ),
          ],
        ),
        backgroundColor: Color(0xFFECECEC),
      ),
    );
  }
}
