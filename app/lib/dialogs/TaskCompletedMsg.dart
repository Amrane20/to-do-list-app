import 'package:flutter/material.dart';

void taskCompletedMsg(BuildContext context, int numb) {
  final scack = SnackBar(
      content: numb == 1 || numb == 2
          ? Text("welldone bourane")
          : numb == 3
              ? Text("you are brillant bourane")
              : Text("you're the top G bourane"));
  Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(scack);
}
