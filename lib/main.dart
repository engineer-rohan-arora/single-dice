import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.blue,
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
  int DiceNumber = 1;
  void changeDiceFace(){
    setState(() {
      DiceNumber=1+Random().nextInt(6);

    });
  }
  @override
  Widget build(BuildContext context) {
    //leftDiceNumber = 2;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 20,
            child: FlatButton(
              onPressed:(){
                changeDiceFace();
              } ,
              child: Image.asset('images/dice$DiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

