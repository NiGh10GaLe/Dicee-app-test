import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text('Dicee App Test'),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1, rightDiceNumb = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$leftDiceNum.png',
                    color: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      leftDiceNum = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$rightDiceNumb.png',
                    color: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      rightDiceNumb = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                leftDiceNum = Random().nextInt(6) + 1;
                rightDiceNumb = Random().nextInt(6) + 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
