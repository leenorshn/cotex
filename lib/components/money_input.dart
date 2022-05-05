import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoneyInput extends StatelessWidget {
  const MoneyInput({
    Key? key,
    required this.controller,
    this.placeHolder,
    required this.isSortie,
    required this.validator,
  }) : super(key: key);
  final String? placeHolder;
  final TextEditingController controller;
  final bool isSortie;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(
            CupertinoIcons.money_dollar_circle,
            color: isSortie ? Colors.orange : Colors.blue,
          ),
          labelText: placeHolder ?? "Montant",
          labelStyle: TextStyle(
            color: isSortie ? Colors.orange : Colors.blue,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: isSortie ? Colors.orange : Colors.blue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: isSortie ? Colors.orange : Colors.blue,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
