import 'package:flutter/material.dart';
import 'package:estudos_flutter1/my_drawer.dart';

class ImcCalculator extends StatefulWidget {
  ImcCalculator({Key? key}) : super(key: key);

  @override
  _ImcCalculatorState createState() => _ImcCalculatorState();
}

class _ImcCalculatorState extends State<ImcCalculator> {
  TextEditingController weightInput = TextEditingController();
  TextEditingController heightInput = TextEditingController();

  double weight = 0;
  double height = 0;
  double resultIMC = 0;
  String resultString = "";

  void refresh() {
    setState(() {
      weightInput.text = "";
      heightInput.text = "";
      resultString = "";
    });
  }

  void calculate() {
    setState(() {
      weight = double.parse(weightInput.text);
      height = double.parse(heightInput.text);
      resultIMC = weight / ((height / 100) * (height / 100));

      resultString = resultIMC <= 0
          ? ""
          : resultIMC < 16.5
              ? "Peso severamente abaixo do normal: "
              : resultIMC < 18.5
                  ? "Peso abaixo do normal: "
                  : resultIMC < 24.99
                      ? "Normal: "
                      : resultIMC < 29.99
                          ? "Pré-obeso: "
                          : resultIMC < 34.99
                              ? "Obesidade classe I: "
                              : resultIMC < 39.99
                                  ? "Obesidade classe II: "
                                  : "Obesidade classe III: ";
    });
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    //var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de IMC"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: refresh,
              icon: const Icon(Icons.refresh, color: Colors.white)),
        ],
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          children: [
            const Icon(Icons.person_outline, size: 125, color: Colors.green),
            SizedBox(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: weightInput,
                    decoration: const InputDecoration(labelText: "Peso (kg)"),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: heightInput,
                    decoration: const InputDecoration(labelText: "Altura (cm)"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                      onPressed: calculate,
                      child: const Text(
                        "Calcular",
                        style: TextStyle(
                          fontSize: 20,
                          //backgroundColor: Colors.green,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        fixedSize: Size(_width * 0.4, 40),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                        resultString != ""
                            ? resultString + resultIMC.toStringAsPrecision(4)
                            : "Preencha os campos",
                        style: const TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ],
        ),
      ),
    );
  }
}
