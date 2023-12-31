import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: DicePage(), debugShowCheckedModeBanner: false));
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
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
      ),
      body: Center(
        child: Column(
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
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
            ),
            Text(
              'Dice Number : $diceNumber',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Agbalumo'),
            ),
          ],
        ),
      ),
    );
  }
}
