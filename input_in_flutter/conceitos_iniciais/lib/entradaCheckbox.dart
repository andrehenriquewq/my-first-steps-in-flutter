import 'package:flutter/material.dart';
 class EntradaCheckbox extends StatefulWidget {
  // const EntradaCheckbox({ Key? key }) : super(key: key);
 
   @override
   _EntradaCheckboxState createState() => _EntradaCheckboxState();
 }
 
 class _EntradaCheckboxState extends State<EntradaCheckbox> {
   
   bool _estaSelecionado = false;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        title: Text("Entrada de dados"),
        centerTitle: true,
      ),
    body: Container(
      child: Column(
        children: <Widget>[
          Text("Comida Brasileira"),
          Checkbox(
            value: _estaSelecionado,
            onChanged: (bool valor){
              //o toString converte qualquer tipo para string
              //print("Checkbox: " + valor.toString());
              setState(() {
                _estaSelecionado = valor;
              });
            },
          ),
        ],
      ),
    ),
     );
   }
 }