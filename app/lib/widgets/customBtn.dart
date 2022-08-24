import 'package:flutter/material.dart';

ElevatedButton customButton(
    {IconData? btnIcon,
    Color? btnColor,
    Color? iconColor,
    String btnText = ""}) {
  return ElevatedButton.icon(
      onPressed: () {
        
      },
      icon: Icon(
        Icons.add_task,
        size: 25,
        color: Colors.black
      ),
      label: Text(
        "",
        style: TextStyle(color: iconColor),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        primary: Colors.greenAccent,
        padding: EdgeInsets.only(left: 8),
      ));
}
