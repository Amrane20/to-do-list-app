import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void deleteMsg(BuildContext context) {
  final snack = SnackBar(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    content: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        "All tasks are deleted",
        style: GoogleFonts.lato(
          fontSize: 14,
        ),
      ),
    ),
    padding: EdgeInsets.all(20),
    duration: Duration(seconds: 2),
  );
  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(snack);
}
