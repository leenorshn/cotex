import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formapp/components/btn.dart';
import 'package:formapp/components/standard_input.dart';

enum AppScreen { stepOne, stepTwo, finalStep }

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController cont1 = TextEditingController();
  TextEditingController cont2 = TextEditingController();
  TextEditingController cont3 = TextEditingController();
  TextEditingController cont4 = TextEditingController();
  var paymentStatus = "Payer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COTEX"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.printer),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 24,
        ),
        children: [
          const Text("Identité"),
          StandardInput(
            controller: cont1,
            placeHolder: "Nom ",
            iconPrefixed: const Icon(CupertinoIcons.person),
            isPassword: false,
            keyBordType: TextInputType.text,
            validator: (value) => value!.isEmpty ? "Champ vide" : null,
          ),
          StandardInput(
            controller: cont2,
            placeHolder: "PostNom & Prenom",
            iconPrefixed: const Icon(CupertinoIcons.person),
            isPassword: false,
            keyBordType: TextInputType.text,
            validator: (value) => value!.isEmpty ? "Champ vide" : null,
          ),
          StandardInput(
            controller: cont4,
            placeHolder: "Date naissance ",
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1990),
                lastDate: DateTime.now(),
              ).then((value) {
                setState(() {
                  cont4.text = "${value!.month}-${value.day} -${value.year}";
                });
              });
            },
            iconPrefixed: const Icon(CupertinoIcons.calendar),
            isPassword: false,
            keyBordType: TextInputType.datetime,
            validator: (value) => value!.isEmpty ? "Champ vide" : null,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Activité"),
          StandardInput(
            controller: cont3,
            placeHolder: "Fonction ",
            iconPrefixed: const Icon(CupertinoIcons.tickets),
            isPassword: false,
            keyBordType: TextInputType.text,
            validator: (value) => value!.isEmpty ? "Champ vide" : null,
          ),
          StandardInput(
            controller: cont3,
            placeHolder: "Formation ",
            iconPrefixed: const Icon(CupertinoIcons.doc),
            isPassword: false,
            keyBordType: TextInputType.text,
            validator: (value) => value!.isEmpty ? "Champ vide" : null,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: const Text("Payer"),
                    value: "Payer",
                    groupValue: paymentStatus,
                    onChanged: (v) {},
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: const Text("Non-payer"),
                    value: "Non-Payer",
                    groupValue: paymentStatus,
                    onChanged: (v) {},
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Button(
            onPressed: () {},
            label: "Enregistrer",
          ),
          const SizedBox(
            height: 24,
          ),
          Button(
            isPrimary: false,
            onPressed: () {},
            label: "Imprimer",
          )
        ],
      ),
    );
  }
}
