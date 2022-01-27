import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[300],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.lightGreen,
        ),
        body: AskMeAnything(),
      ),
    ),
  );
}

class AskMeAnything extends StatefulWidget {
  const AskMeAnything({Key? key}) : super(key: key);

  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int answerImage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      answerImage = Random().nextInt(5) + 1;
                    },
                  );
                },
                child: Image.asset('images/answer$answerImage.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
