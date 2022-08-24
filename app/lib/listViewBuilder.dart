import 'package:flutter/material.dart';

class listViewB extends StatelessWidget {
   listViewB({Key? key,}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    List <Widget> tileList = [ElevatedButton(onPressed: null, child: Icon(Icons.check))
];
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          // itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Expanded(
            flex: 4,
            child: ListTile(
              tileColor: Colors.greenAccent,
              dense: true,
              isThreeLine: true,
              // enabled: taskComplet,
              // tileColor: completedTaskColor,
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              leading: tileList[0],
              title: Text("Task $index"),
              subtitle: Text("Mission of the day "),
            ),
          ),
        );
      }),
    );
  }
}
