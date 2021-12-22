import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurrencyTextField extends StatelessWidget {
  final String labelDefaultName;
  final TextEditingController inputController;
  Color borderColor;

  CurrencyTextField(
      {Key? key, required this.labelDefaultName, required this.inputController, this.borderColor=Colors.amber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: inputController,
        decoration: InputDecoration(
            labelText: labelDefaultName,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
            )),
      ),
    );
  }
}
