import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue[900],
          ),
          body: BallPage()),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballNumber = 1;
  void getBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                getBallNumber();
                print("Ball got clicked.");
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
