import 'package:flutter/material.dart';

class TextFieldDocs extends StatefulWidget {
  const TextFieldDocs({Key? key}) : super(key: key);

  @override
  State<TextFieldDocs> createState() => _TextFieldDocsState();
}

class _TextFieldDocsState extends State<TextFieldDocs> {
  TextEditingController _ctr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField docs :"),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "your name :",
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                    // border: UnderlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Colors.green),
                controller: _ctr,
              ),
              width: 200,
            ),
            IconButton(
                onPressed: () {
                  print(_ctr.text);
                  _ctr.clear();
                },
                icon: Icon(Icons.send))
          ],
        ),
      ),
    );
  }
}
