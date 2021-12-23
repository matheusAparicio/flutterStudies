import 'package:flutter/material.dart';

import 'currency_converter.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

String request = "https://api.hgbrasil.com/finance?key=ea279327";

class CurrencyTextField extends StatefulWidget {
  final String labelDefaultName;
  final TextEditingController inputController;
  final Color borderColor;
  final FocusNode focusNode;

  const CurrencyTextField(
      {Key? key,
      required this.labelDefaultName,
      required this.inputController,
      required this.focusNode,
      this.borderColor = Colors.amber})
      : super(key: key);

  @override
  State<CurrencyTextField> createState() => _CurrencyTextFieldState();
}

class _CurrencyTextFieldState extends State<CurrencyTextField> {
  Future getData() async {
    Uri data = Uri.parse(request);
    var response = await http.get(data);
    return json.decode(response.body);
  }

  dynamic getAPI() async {
    map = await getData();
    return map;
  }

  var map;

  @override
  void initState() {
    getAPI();
    super.initState();
  }

  void checkIfNull() {
    setState(() {
      if (realInput.text == "" &&
          dollarInput.text.isNotEmpty &&
          euroInput.text.isNotEmpty) {
        dollarInput.text = "";
        euroInput.text = "";
      } else if (dollarInput.text == "" &&
          realInput.text.isNotEmpty &&
          euroInput.text.isNotEmpty) {
        realInput.text = "";
        euroInput.text = "";
      } else if (euroInput.text == "" &&
          realInput.text.isNotEmpty &&
          dollarInput.text.isNotEmpty) {
        realInput.text = "";
        dollarInput.text = "";
      }
    });
  }

  void updateFields(String fieldName) {
    switch (fieldName) {
      case "Reais":
        setState(() {
          checkIfNull();
          dollarInput.text = (double.parse(realInput.text) /
                  map["results"]["currencies"]["USD"]["buy"])
              .toStringAsFixed(2);
          euroInput.text = (double.parse(realInput.text) /
                  map["results"]["currencies"]["EUR"]["buy"])
              .toStringAsFixed(2);
        });
        break;
      case "Dólares":
        setState(() {
          checkIfNull();
          realInput.text = (map["results"]["currencies"]["USD"]["buy"] *
                  double.parse(dollarInput.text))
              .toStringAsFixed(2);
          euroInput.text = (double.parse(realInput.text) /
                  map["results"]["currencies"]["EUR"]["buy"])
              .toStringAsFixed(2);
        });
        break;
      default:
        setState(() {
          checkIfNull();
          realInput.text = (map["results"]["currencies"]["EUR"]["buy"] *
                  double.parse(euroInput.text))
              .toStringAsFixed(2);
          dollarInput.text = (double.parse(realInput.text) /
                  map["results"]["currencies"]["USD"]["buy"])
              .toStringAsFixed(2);
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextField(
          keyboardType: TextInputType.number,
          controller: widget.inputController,
          decoration: InputDecoration(
            labelText: widget.labelDefaultName,
            labelStyle: const TextStyle(color: Colors.black),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
            ),
          ),
          onChanged: ((_) {
            updateFields(widget.labelDefaultName);
          })),
    );
  }
}
