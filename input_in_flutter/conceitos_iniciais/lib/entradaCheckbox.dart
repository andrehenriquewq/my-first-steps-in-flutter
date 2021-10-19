import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  // const EntradaCheckbox({ Key? key }) : super(key: key);

  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

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
            /*
          checkbox metodo 1

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
          ), */

          //o checkbox marca várias opções
            CheckboxListTile(
                title: Text("Comida brasileira"),
                subtitle: Text("A melhor comida do mundo!!"),
                //activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),

                value: _comidaBrasileira,
                onChanged: (bool valor) {
                  setState(() {
                    _comidaBrasileira = valor;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida mexicana"),
                subtitle: Text("A melhor comida do mundo!!"),
                //activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),

                value: _comidaMexicana,
                onChanged: (bool valor) {
                  setState(() {
                    _comidaMexicana = valor;
                  });
                }),
            RaisedButton(
              onPressed: (){
                print("Comida Brasileira: " + _comidaBrasileira.toString() + 
                " Comida mexicana: " + _comidaMexicana.toString());

              },
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
