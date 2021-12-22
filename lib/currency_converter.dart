import 'package:estudos_flutter1/currency_text_field.dart';
import 'package:flutter/material.dart';
import 'package:estudos_flutter1/my_drawer.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController realInput = TextEditingController();
  TextEditingController dollarInput = TextEditingController();
  TextEditingController euroInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conversor de Moedas"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: SizedBox(
          child: Column(
            children: [
              const Icon(Icons.money, color: Colors.amber, size: 125),
              Row(),
              CurrencyTextField(
                  labelDefaultName: "Reais: ", inputController: realInput),
              CurrencyTextField(
                  labelDefaultName: "Dólares: ", inputController: dollarInput),
              CurrencyTextField(
                  labelDefaultName: "Euros: ", inputController: euroInput),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    );
  }
}
