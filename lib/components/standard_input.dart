import 'package:flutter/material.dart';

class StandardInput extends StatelessWidget {
  const StandardInput({
    Key? key,
    required this.controller,
    this.placeHolder,
    this.onTap,
    this.errorText,
    required this.iconPrefixed,
    required this.isPassword,
    required this.keyBordType,
    required this.validator,
    this.helperText,
  }) : super(key: key);
  final String? placeHolder;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final TextInputType keyBordType;
  final bool isPassword;
  final Icon iconPrefixed;
  final String? Function(String?)? validator;
  final String? helperText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        onTap: onTap,
        keyboardType: keyBordType,
        obscureText: isPassword,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: iconPrefixed,
          labelText: placeHolder ?? "Nom du produit",
          labelStyle: const TextStyle(
            color: Colors.blue,
          ),
          helperText: helperText,
          helperMaxLines: 2,
          errorText: errorText,
          errorMaxLines: 3,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
