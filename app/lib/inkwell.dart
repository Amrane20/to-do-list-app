import 'package:flutter/material.dart';
import 'dart:math';

class rendom extends StatefulWidget {
  const rendom({Key? key}) : super(key: key);

  @override
  State<rendom> createState() => _rendomState();
}

class _rendomState extends State<rendom> {
  List<String> players = [
    "amine",
    "amrane",
    "moad",
    "youness",
    "said",
    "nourdeine"
  ];

  void changePlayer() {
    setState(() {
      player = players[Random().nextInt(players.length)];
    });
  }

  void changeSize() {
    setState(() {
      firstSize++;
    });
  }

  String player = "";
  var firstSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this the random players app")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  changeSize();
                },
                child: Icon(
                  Icons.add,
                  size: firstSize,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(player,
                  style: TextStyle(
                    fontSize: firstSize,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: changePlayer,
                child: Text(
                  'select',
                  style: TextStyle(fontSize: firstSize),
                ))
          ],
        ),
      ),
    );
  }
}
