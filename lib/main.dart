import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepPurpleAccent.shade100,
          appBar: AppBar(
            title: Text('Dice'),
            centerTitle: true,
            elevation: 100.0,
            backgroundColor: Colors.deepPurple.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(100.0),
              ),
            ),
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 1;

  void change() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Image.asset('images/dice$left.png'),
                onPressed: () {
                  setState(() {
                    change();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Image.asset('images/dice$right.png'),
                onPressed: () {
                  setState(() {
                    change();
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
