import 'dart:math';
import 'package:app/dialogs/deleteMsg.dart';
import 'package:app/dialogs/deleteTaskMsg.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:app/widgets/customBtn.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dialogs/TaskCompletedMsg.dart';

class taskList extends StatefulWidget {
  const taskList({Key? key}) : super(key: key);

  @override
  State<taskList> createState() => _taskListState();
}

class _taskListState extends State<taskList> {
  var txtStyle = GoogleFonts.nunito(fontSize: 45, color: Colors.white);

  TextEditingController _controller = TextEditingController();
  String mission = "";
  bool isMissionFill = false;
  List<String> missions = [];
  List<bool> isDeleted = [];
  List<bool> isComplet = [];
  List<bool> clearAll = [];

  bool isNoMission = false;

// the listtile variables

  Color completedTaskColor = Colors.grey;
  Color tileColor = Colors.black54;
  Icon completedTaskICon = Icon(Icons.check);
  bool taskDeleted = false;
  bool taskCompleted = false;

// the number of the task copleted succefuly
  int numTaskSucceflly = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xeff242526),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              height: 100,
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.task,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Bourane To Do List",
                      style: GoogleFonts.indieFlower(
                          fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [Color(0xeffEB5757), Color(0xeff000000)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.decal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "Welcome, Bourane ",
                style: txtStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 35,
              ),
              child: Row(
                children: [
                  Container(
                    child: TextField(
                      style: GoogleFonts.nunito(color: Colors.white),
                      cursorColor: Color(0xeffEB5757),
                      controller: _controller,
                      decoration: InputDecoration(
                          fillColor: Color(0xeffEB5757),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xeffEB5757),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xeffEB5757),
                          )),
                          hintText: "write your tasks",
                          hintStyle: GoogleFonts.indieFlower(
                              fontSize: 16, color: Color(0xeffACAFB0))),
                    ),
                    width: MediaQuery.of(context).size.width * 0.55,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          mission = _controller.text;
                          if (mission == "") {
                            isNoMission = true;
                          }
                          ;
                          isMissionFill = true;
                          missions.add(mission);
                          isDeleted.add(false);
                          isComplet.add(false);
                          clearAll.add(false);
                          _controller.clear();
                        });
                      },
                      icon: Icon(Icons.add_task, size: 25, color: Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 5,
                        ),
                        child: Text(
                          "",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        primary: Color(0xeffBFB192),
                        padding: EdgeInsets.only(left: 8),
                      )),
                ],
              ),
            ),
            Flexible(
              child: isMissionFill && isDeleted.contains(false) && !isNoMission
                  ? ListView.builder(
                      itemCount: missions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 5),
                          child: !isDeleted[index]
                              ? Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: !isComplet[index]
                                        ? Color(0xeff594C3D)
                                        : Color(0xeffACAFB0),
                                  ),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: ListTile(
                                          // tileColor:
                                          dense: true,
                                          isThreeLine: true,
                                          enabled: isComplet[index],
                                          iconColor: isComplet[index]
                                              ? Colors.black54
                                              : null,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          leading: !isComplet[
                                                  index] // if it's true
                                              ? null
                                              : Icon(Icons.task_alt_outlined),
                                          title: Text(
                                            "Task ${index + 1}",
                                            style: GoogleFonts.nunito(
                                                decoration: isComplet[index]
                                                    ? TextDecoration.lineThrough
                                                    : null,
                                                fontSize: 20,
                                                color: !isComplet[index]
                                                    ? Color(0xeffE2F1FF)
                                                    : Colors.black54),
                                          ),
                                          subtitle: isMissionFill
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(missions[index],
                                                      style: GoogleFonts.indieFlower(
                                                          decoration: isComplet[
                                                                  index]
                                                              ? TextDecoration
                                                                  .lineThrough
                                                              : null,
                                                          fontSize: 16,
                                                          color: !isComplet[
                                                                  index]
                                                              ? Color(
                                                                  0xeffE2F1FF)
                                                              : Colors
                                                                  .black54)),
                                                )
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                      "Mission of the day ",
                                                      style: GoogleFonts
                                                          .indieFlower(
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xeffE2F1FF))),
                                                ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            if (!isComplet[index])
                                              // here when we click at the check button
                                              Builder(builder: (context) {
                                                return IconButton(
                                                    color: Color(0xeffE2F1FF),
                                                    onPressed: () {
                                                      setState(() {
                                                        print(
                                                            "the task is ${isComplet[index]}");
                                                        isComplet[index] = true;
                                                        numTaskSucceflly++;
                                                        print(
                                                            "the number of succefly tasks is $numTaskSucceflly");
                                                      });
                                                      taskCompletedMsg(context,numTaskSucceflly);
                                                    },
                                                    icon: completedTaskICon);
                                              }),
                                            if (!isComplet[
                                                index]) // will be shown only when the check button has been taped
                                              Builder(builder: (context) {
                                                return IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      taskDeleted = true;
                                                      isDeleted[index] = true;
                                                    });
                                                    deletTaskMsg(
                                                        context, index);
                                                  },
                                                  icon: Icon(Icons.delete),
                                                  color: Color(0xeffE2F1FF),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : null,
                        );
                      })
                  : Padding(
                      padding: const EdgeInsets.only(
                        left: 35,
                        right: 30,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Your tasks will be shown here",
                            style: GoogleFonts.nunito(
                                fontSize: 14, color: Color(0xeff697987)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xeff697987),
                          )
                        ],
                      ),
                    ),
            ),
          ],
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Color(0xeffBFB192),
            onPressed: () {
              setState(() {
                missions.clear();
                isComplet.clear();
                isDeleted.clear();
                // Scaffold.of(context)
                //   ..removeCurrentSnackBar()
                //   ..showSnackBar(SnackBar(
                //     content: Text("all the tasks deleted"),
                //   ));
                deleteMsg(context);
              });
            },
            child: Icon(Icons.delete),
          );
        }));
  }
}
