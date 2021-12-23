import 'package:flutter/material.dart';
import 'package:estudos_flutter1/my_drawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página inicial"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.refresh, color: Colors.white))
        ],
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(children: const []),
      ),
    );
  }
}