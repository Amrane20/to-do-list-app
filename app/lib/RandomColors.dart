import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

Color mainColor = Colors.grey;
Color sendColor = mainColor;
List<Color> listColors = [
  Color(0xFF8C4997),
  Color(0xFFE91E63),
  Color(0xffC13588),
  Color(0xFF575290),
  Color(0xFF335078),
  Color(0xFF2F4858),
];

class tikTak extends StatefulWidget {
  const tikTak({Key? key}) : super(key: key);

  @override
  State<tikTak> createState() => _tikTakState();
}

class _tikTakState extends State<tikTak> {
  void changeColor(Color sendColor) {
    setState(() {
      mainColor = sendColor;
    });
  }

  bool isTaped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('sfay7 rjlik game : ')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    setState(() {
                      isTaped = true;
                    });
                  });
                  isTaped
                      ? changeColor(
                          listColors[Random().nextInt(listColors.length)])
                      : changeColor(mainColor);
                  print(listColors[Random().nextInt(listColors.length)]);
                },
                child: customRow()),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    setState(() {
                      isTaped = true;
                    });
                  });
                  isTaped
                      ? changeColor(
                          listColors[Random().nextInt(listColors.length)])
                      : changeColor(mainColor);
                  print(listColors[Random().nextInt(listColors.length)]);
                },
                child: customRow()),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    setState(() {
                      isTaped = true;
                    });
                  });
                  isTaped
                      ? changeColor(
                          listColors[Random().nextInt(listColors.length)])
                      : changeColor(mainColor);
                  print(listColors[Random().nextInt(listColors.length)]);
                },
                child: customRow()),
          ],
        ));
  }
}

Row customRow() {
  return Row(
    children: [
      SizedBox(
        width: 10,
      ),
      customBox(),
      SizedBox(
        width: 10,
      ),
      customBox(),
      SizedBox(
        width: 10,
      ),
      customBox(),
    ],
  );
}

Container customBox() {
  return Container(
    color: mainColor,
    width: 100,
    height: 100,
  );
}
