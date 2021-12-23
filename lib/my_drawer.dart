import 'package:flutter/material.dart';
import 'package:estudos_flutter1/home_page.dart';
import 'package:estudos_flutter1/person_counter.dart';
import 'package:estudos_flutter1/imc_calculator.dart';
import 'package:estudos_flutter1/currency_converter.dart';
import 'package:estudos_flutter1/todo_list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void gotoHomePage() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }

    void gotoPersonCounter() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const PersonCounter()));
    }

    void gotoImcCalculator() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ImcCalculator()));
    }

    Future<dynamic> gotoCurrencyConverter() {
      return Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const CurrencyConverter()));
    }

    void gotoToDoList() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const ToDoList()));
    }

    Widget buttonDrawer(
        {String? buttonName,
        IconData? buttonIcon,
        Color? buttonColor,
        required VoidCallback buttonPressed}) {
      return TextButton.icon(
          style: const ButtonStyle(alignment: Alignment.centerLeft),
          onPressed: ()=> buttonPressed,
          icon: Icon(buttonIcon, color: buttonColor),
          label: Text(buttonName!, style: TextStyle(color: buttonColor)));
    }

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 60, 80),
        child: ListView(
          children: [
            buttonDrawer(
                buttonName: "Página Inicial",
                buttonColor: Colors.black,
                buttonIcon: Icons.home,
                buttonPressed: ()=>gotoHomePage()),
            const SizedBox(height: 45),
            TextButton.icon(
                style: const ButtonStyle(alignment: Alignment.centerLeft),
                onPressed: gotoPersonCounter,
                icon: const Icon(Icons.person, color: Colors.black),
                label: const Text("Contador de Pessoas")),
            const SizedBox(height: 10),
            TextButton.icon(
                style: const ButtonStyle(alignment: Alignment.centerLeft),
                onPressed: gotoImcCalculator,
                icon: const Icon(Icons.calculate, color: Colors.black),
                label: const Text("Calculadora de IMC")),
            const SizedBox(height: 10),
            TextButton.icon(
                style: const ButtonStyle(alignment: Alignment.centerLeft),
                onPressed: gotoCurrencyConverter,
                icon: const Icon(Icons.money, color: Colors.black),
                label: const Text("Conversor de Moedas",
                    style: TextStyle(color: Colors.amber))),
            const SizedBox(height: 10),
            TextButton.icon(
              style: const ButtonStyle(alignment: Alignment.centerLeft),
              onPressed: gotoToDoList,
              icon: const Icon(Icons.list, color: Colors.black),
              label: Text("Lista de Tarefas",
                  style: TextStyle(color: Colors.blue[800])),
            ),
          ],
        ),
      ),
    );
  }
}
