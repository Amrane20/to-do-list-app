import 'package:flutter/material.dart';

class tile extends StatefulWidget {
  const tile({Key? key}) : super(key: key);

  @override
  State<tile> createState() => _tileState();
}

class _tileState extends State<tile> {
  int _act = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListTile(
            leading: const Icon(Icons.check),
            title: const Text("Trix's airplane"),
            subtitle: _act != 2
                ? const Text('The airplane is only in Act II.')
                : null,
            enabled: _act == 2,
            onTap: () {
              print("the listtile is taped");
            }),
      ),
    );
  }
}
