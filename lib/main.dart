import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.green.shade900,
    appBar: AppBar(
      backgroundColor: Colors.green.shade900,
    ),
    body: const DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          child: TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.green[900]),
            onPressed: () {
              setState(() {
                diceNumber = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('Assets/images/Dice$diceNumber.jpg'),
          ),
        ),
        Text('dice $diceNumber')
      ],
    ));
  }
}
