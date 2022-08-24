import 'package:flutter/material.dart';
import 'dart:math';

class test extends StatefulWidget {
  const test({Key? key, required this.tit}) : super(key: key);
  final String tit;

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  List images = [
    'assets/images/pro2.png',
    'assets/images/pro3.png',
    'assets/images/pro4.png',
  ];

  String switchImage() {
    setState(() {
      urlTest = images[Random().nextInt(images.length)];
    });
    return urlTest;
  }

  // String imageUrl = "";
  String urlTest = "assets/images/pro3.png";

  Card customCard(String url, String numPro) {
    return Card(
      child: Row(
        children: [
          Image.asset(
            url,
            width: 150,
            height: 200,
          ),
          Column(
            children: [
              Text('''
this is the product number $numPro 
Lorem ipsum dolor sit amet, 
consectetur adipiscing elit. 
Nunc libero mi, rhoncus '''),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      url = switchImage();
                    });
                  },
                  child: Text("see more")),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.tit)),
      body: Column(
        children: [
          // revCustomCard(urlTest, '2'),
          customCard(urlTest, '3'),
          customCard(urlTest, '1'),
          ElevatedButton(
              onPressed: () {
                urlTest = switchImage();
              },
              child: Text('switch')),
          // customCard('assets/images/pro3.png', '3'),
        ],
      ),
    );
  }
}

Card revCustomCard(String url, String numPro) {
  return Card(
    child: Row(
      children: [
        Text('''
this is the product number $numPro
Lorem ipsum dolor sit amet, 
consectetur adipiscing elit. 
Nunc libero mi, rhoncus '''),
        Image.asset(
          url,
          width: 150,
          height: 200,
        ),
      ],
    ),
  );
}
