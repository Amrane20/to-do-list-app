import 'package:app/RandomColors.dart';
import 'package:app/inkwell.dart';
import 'package:app/listViewBuilder.dart';
import 'package:app/listtile.dart';
import 'package:app/product.dart';
import 'package:app/taskList.dart';
import 'package:app/textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const test(tit: 'flutter cours testing'),
      // home: rendom(),
      home: taskList(),
      // home: TextFieldDocs(),
      // home: listViewB(),
    );
  }
}
