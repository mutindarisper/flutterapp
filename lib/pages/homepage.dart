// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_first_app/data/database.dart';
import 'package:my_first_app/util/dialogbox.dart';
import 'package:my_first_app/util/todotile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final myBox = Hive.box('mybox');
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    if (myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }

    super.initState();
  }

  final controller = TextEditingController();
  // List db.toDoList = [
  //   ["Go Gym", true],
  //   ["Learn Flutter", false],
  //   ["Finish Project", false],
  //   ["Go Swimming", false],
  // ];
  void checkBoxChanged(int index, bool? value) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    //update database after every change
    db.updateDataBase();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
    
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([controller.text, false]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }

  void deleteTask(index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 193, 203),
        appBar: AppBar(
          title: Text("TO DO"),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: db.toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                taskName: db.toDoList[index][0],
                taskCompleted: db.toDoList[index][1],
                onChanged: (value) => checkBoxChanged(index, value),
                deleteTask: () => deleteTask(index),
              );
            }));
  }
}
