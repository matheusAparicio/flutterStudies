import 'package:flutter/material.dart';
import 'my_drawer.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tarefas"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.refresh, color: Colors.white))
        ],
        backgroundColor: Colors.blue[800],
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(children: const [
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
          Text("Texto de teste"),
        ]),
      ),
    );
  }
}
