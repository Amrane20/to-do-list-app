import 'package:flutter/material.dart';

void deletTaskMsg(BuildContext context, int numb) {
  final snack = SnackBar(content: Text("task ${numb + 1} deleted succefully "));
  Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snack);
}
