import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {Key? key,
      required this.initialValue,
      this.focusNode,
      required this.prefixIcon,
      required this.onChanged,
      required this.textInputType,
      required this.labelText,
      this.errorText,
      this.helperText})
      : super(key: key);
  final String initialValue;
  final FocusNode? focusNode;
  final Icon prefixIcon;
  final String? helperText;
  final String labelText;
  final String? errorText;
  final TextInputType textInputType;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        initialValue: initialValue,
        focusNode: focusNode,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          helperText: helperText,
          helperMaxLines: 2,
          labelText: labelText,
          errorMaxLines: 2,
          errorText: errorText,
          contentPadding: EdgeInsets.zero,
          labelStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
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
        keyboardType: textInputType,
        onChanged: onChanged,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
