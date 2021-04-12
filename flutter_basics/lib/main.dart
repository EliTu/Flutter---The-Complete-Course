import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              onPressed: () => {},
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => {},
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => {},
            ),
          ],
        ),
        backgroundColor: Color(0xFFECECEC),
      ),
    );
  }
}
