import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(Todolist());
}

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  List<String> tasks = []; //tasks are stored here
  TextEditingController taskController = TextEditingController();

  void addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text);
        taskController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                "Assets/NOTES.jpg",
                scale: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "My Notes",
                style: TextStyle(
                  fontSize: 30,
                ),
              )
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.black38,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: taskController, //gets task and adds to list
                        decoration: InputDecoration(
                          hintText: "What do you want to do?..",
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: addTask,
                      child: Icon(Icons.add),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 0,
                      ),
                    ),
                  ],
                ),
              ),

              //List of tasks
              Expanded(
                  child: tasks.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "Assets/empty-inbox.png",
                                scale: 5,
                              ),
                              Text("no tasks available.")
                            ],
                          ),
                        )
                      : ListView.builder(
                          padding: EdgeInsets.all(8),
                          itemCount: tasks.length,
                          itemBuilder: (context, index) => Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                //border color and width
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromARGB(255, 242, 244, 243)
                                .withOpacity(0.9),
                            child: ListTile(
                              title: Text(tasks[index]),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  setState(() {
                                    tasks.removeAt(index);
                                  });
                                },
                              ),
                            ),
                          ),
                        ))
            ],
          ),
        ),
      ),
    );
  }
}
