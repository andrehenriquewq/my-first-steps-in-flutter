import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  //criando um group value
  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text("Masculino"),
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha);
                }
              ),
              RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha);
                }
              ),
              RadioListTile(
              title: Text("teste"),
              value: "t",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha);
                }
              ),
              RaisedButton(
              onPressed: (){
                print("O usuário escolheu: " + _escolhaUsuario.toString());

              },
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
           /*
            Text("Masculino"),
            Radio(
                //define o valor ao clicar no radio, saber qual radio foi selecionado
                value: "m",
                //define/recebe oque foi selecionado pelo usuário, recebe o mesmo tipo
                groupValue: _escolhaUsuario,
                onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha);
                }),
            Text("Feminino"),
            Radio(
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha);
                }) */
          ],
        ),
      ),
    );
  }
}
