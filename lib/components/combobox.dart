import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Combobox extends StatelessWidget {
  final List<String> items;
  final Function(String?) onChanged;
  final String dropdownValue;
  final String label;

  const Combobox(
      {Key? key,
      required this.items,
      required this.onChanged,
      required this.label,
      required this.dropdownValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 18),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 4),
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.blue,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 8,
              ),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(
                  CupertinoIcons.chevron_down,
                  color: Colors.blue,
                ),
                isExpanded: true,
                elevation: 16,
                style: const TextStyle(color: Colors.blue),
                underline: Container(
                    //   height: 2,
                    //   color: Colors.deepPurpleAccent,
                    ),
                onChanged: onChanged,
                items: items.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
