import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dice1 = 1;
  int dice2 = 1;
  int result = 2;
  int getRandomValue() {
    Random random = new Random();
    int value = random.nextInt(5);
    return value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Image.asset("photo/dice$dice1.png"),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Image.asset("photo/dice$dice2.png"),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              child: Text(
                "Sum of two dice is: $result",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    shadowColor: Colors.black,
                    minimumSize: Size(200, 50)),
                child: Text(
                  "ROLL",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
                onPressed: () {
                  setState(() {
                    dice1 = getRandomValue();
                    dice2 = getRandomValue();
                    result = dice1 + dice2;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
