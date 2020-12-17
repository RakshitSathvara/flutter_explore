import 'package:flutter/material.dart';
import 'package:flutter_explore/src/app.dart';

void main() {
  runApp(UserApp());
}

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            questions[0],
          ),
        ),
        body: Column(
          children: [
            Text('The Question'),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 1'),
            ),
          ],
        ),
      ),
    );
  }
}
