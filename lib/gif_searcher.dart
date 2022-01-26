import 'package:flutter/material.dart';
import 'package:estudos_flutter1/my_drawer.dart';

class GifSearcher extends StatefulWidget {
  const GifSearcher({Key? key}) : super(key: key);

  @override
  _GifSearcherState createState() => _GifSearcherState();
}

class _GifSearcherState extends State<GifSearcher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Contador de Pessoas"),
          centerTitle: true,
          actions: const [],
          backgroundColor: Colors.deepOrange[800]),
      drawer: const MyDrawer(),
    );
  }
}
