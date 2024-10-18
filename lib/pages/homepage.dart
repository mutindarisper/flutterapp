// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_first_app/util/dialogbox.dart';
import 'package:my_first_app/util/todotile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controller = TextEditingController();
  List todoList = [
    ["Go Gym", true],
    ["Learn Flutter", false],
    ["Finish Project", false],
    ["Go Swimming", false],
  ];
  void checkBoxChanged(int index, bool? value) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
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
    // setState(() {
    //   todoList.add(["New Task", false]);
    // });
  }

  void saveNewTask() {
    setState(() {
      todoList.add([controller.text, false]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }

  void deleteTask(index) {
    setState(() {
      todoList.removeAt(index);
    });
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
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                taskName: todoList[index][0],
                taskCompleted: todoList[index][1],
                onChanged: (value) => checkBoxChanged(index, value),
                deleteTask: (context) => deleteTask,
              );
            }));
  }
}
