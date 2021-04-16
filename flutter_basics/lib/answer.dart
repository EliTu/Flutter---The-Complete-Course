import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _tapHandler;
  final String _answerText;

  Answer(this._tapHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        child: Text('$_answerText'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: _tapHandler,
      ),
    );
  }
}
