import 'package:flutter/material.dart';
import 'package:estudos_flutter1/my_drawer.dart';

class PersonCounter extends StatefulWidget {
  const PersonCounter({Key? key}) : super(key: key);

  @override
  _PersonCounterState createState() => _PersonCounterState();
}

class _PersonCounterState extends State<PersonCounter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de Pessoas"),
        centerTitle: true,
        actions: const [],
      ),
      drawer: const MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? "Lotado." : "Pode entrar!",
            style: TextStyle(
              fontSize: 25,
              color: isFull ? Colors.red : Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 60,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isFull ? null : increment,
                child: const Text("Entrou"),
                style: TextButton.styleFrom(
                  backgroundColor:
                      isFull ? Colors.black12.withOpacity(0.1) : Colors.black12,
                  fixedSize: const Size(65, 65),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //padding: const EdgeInsets.fromLTRB(20, 35, 20, 35),
                ),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: isEmpty ? null : decrement,
                child: const Text("Saiu"),
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty
                      ? Colors.black12.withOpacity(0.1)
                      : Colors.black12,
                  fixedSize: const Size(65, 65),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //padding: const EdgeInsets.fromLTRB(20, 35, 20, 35),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
