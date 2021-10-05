import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  // const CampoTexto({ Key? key }) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              //text, number, emailAddress, datetime
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              //enabled: false,
              //maximo de caracteres que vc quer que o user digite
            //  maxLength: 2,
              //não bloqueia a quantidade de caracteres mas exibe um erro
           //  maxLengthEnforced: false,
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
              //esconde o que o usuário está digitando.
             // obscureText: true,

             //como recuperar oque o usuário digitou e usar?
             // o onChanged captura tudo que o usuario digitar em tempo real
             /*
             onChanged: (String texto){
               print("Valor digitado:" + texto);
             }, */
             //o onSubmitted só passa os valores quando o user confirma os dados
             onSubmitted: (String texto){
               print("Valor digitado:" + texto);
             },
             controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightGreen,
            onPressed: (){
              print("Valor digitado button:" + _textEditingController.text);
            },
          ),

        ],
      ),
    );
  }
}
