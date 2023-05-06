import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Nome",
            ),
            validator: (value) {
              if (value!.isNotEmpty) {
                return 'Informe algum texto';
              }
              return null;
            },
          ),
          Container(
            height: 20,
          ),
        ],
      ),
    );
  }
}
