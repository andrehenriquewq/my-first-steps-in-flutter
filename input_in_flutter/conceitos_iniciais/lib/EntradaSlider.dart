import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  //const EntradaSlider({ Key? key }) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  @override
  double valor = 5;
  String label = "Valor selecionado";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[

            Slider(
              //value é o valor inicial
              value: valor,
              min: 0,
              max: 10,
              label: label,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.purple,
               onChanged: (double novoValor){
                 setState(() {
                   valor = novoValor;
                   label = "Valor selecionado: " + novoValor.toString();
                 });
                 //print("Valor selecionado: " + novoValor.toString());
               }
            ),
            RaisedButton(
              child: Text( 
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: (){
                print("Valor selecionado: " + valor.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}