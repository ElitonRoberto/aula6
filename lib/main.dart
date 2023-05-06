import 'package:flutter/material.dart';
import 'formulario.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  _MeuApp createState() => _MeuApp();
}

class _MeuApp extends State<MeuApp> {
  int contador = 0;
  var cor = Colors.white;
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Titulo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              contador.toString(),
              style: const TextStyle(
                fontSize: 50.0,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                contador++;
              });
            },
            child: const Text('Somar'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                contador--;
              });
            },
            child: const Text('Subtrair'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                contador == (contador * 2);
              });
            },
            child: const Text('Multiplicar'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                int temp = contador;
                contador ==  temp / 2;
              });
            },
            child: const Text('Dividir'),
          ),
          /*Container(
            color = Colors.black,
            child: ElevatedButton(
            onPressed: () {
              setState(() {
                
              });
            },
            child: const Text('Mudar cor de fundo'),
          ),
          ),*/

          /*TextField(
            decoration: InputDecoration(
              labelText: 'Nome',
            ),
            onChanged: (nomedoTexto) {
              setState(() {
                nome = nomedoTexto;
              });
            },
          ),
          Text("O seu nome digitado: $nome"),*/
          Formulario(),
        ],
      ),
    ));
  }
}
