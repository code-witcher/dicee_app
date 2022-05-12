import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = Random().nextInt(6) + 1;
  int rightDiceNo = Random().nextInt(6) + 1;

  void toggleDiceNo() {
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: toggleDiceNo,
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: toggleDiceNo,
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
