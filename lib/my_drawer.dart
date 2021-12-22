import 'package:flutter/material.dart';
import 'package:estudos_flutter1/home_page.dart';
import 'package:estudos_flutter1/person_counter.dart';
import 'package:estudos_flutter1/imc_calculator.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void gotoHomePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

    void gotoPersonCounter() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => PersonCounter()));
  }

  void gotoImcCalculator() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => ImcCalculator()));
  }

    return Drawer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(60, 40, 60, 80),
          child: ListView(
            children: [
              TextButton.icon(
                  onPressed: gotoHomePage,
                  icon: const Icon(Icons.home, color: Colors.black),
                  label: const Text("Página inicial")),
              const SizedBox(height: 45),
              TextButton.icon(
                  onPressed: gotoPersonCounter,
                  icon: const Icon(Icons.person, color: Colors.black),
                  label: const Text("Contador de Pessoas")),
              const SizedBox(height: 10),
              TextButton.icon(
                  onPressed: gotoImcCalculator,
                  icon: const Icon(Icons.calculate, color: Colors.black),
                  label: const Text("Calculadora de IMC")),
            ],
          ),
        ),
      );
  }
}