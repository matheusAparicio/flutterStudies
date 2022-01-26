import 'package:estudos_flutter1/currency_text_field.dart';
import 'package:flutter/material.dart';
import 'package:estudos_flutter1/my_drawer.dart';

TextEditingController realInput = TextEditingController();
TextEditingController dollarInput = TextEditingController();
TextEditingController euroInput = TextEditingController();

  FocusNode focusReal = FocusNode();
  FocusNode focusDol = FocusNode();
  FocusNode focusEur = FocusNode();

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  CurrencyConverterState createState() => CurrencyConverterState();
}

class CurrencyConverterState extends State<CurrencyConverter> {
  @override
  Widget build(BuildContext context) {
    //var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Conversor de Moedas",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: SizedBox(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(35),
                child: Icon(Icons.attach_money, color: Colors.amber, size: 125),
              ),
              Row(),
              CurrencyTextField(
                labelDefaultName: "Reais",
                inputController: realInput,
                focusNode: focusReal,
              ),
              CurrencyTextField(
                labelDefaultName: "Dólares",
                inputController: dollarInput,
                focusNode: focusDol,
              ),
              CurrencyTextField(
                labelDefaultName: "Euros",
                inputController: euroInput,
                focusNode: focusEur,
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    );
  }
}
