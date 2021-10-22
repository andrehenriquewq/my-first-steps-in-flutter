import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  //const EntradaSwitch({ Key? key }) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _escolhaConfig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            SwitchListTile(
              title: Text("Receber notificações?"),
             value: _escolhaUsuario,
             onChanged: (bool valor){
               setState(() {
                 _escolhaUsuario = valor;
               });
             },
             ),
             
              RaisedButton(
              onPressed: (){
               // print("Resultado: " + _escolhaUsuario.toString());
               if(_escolhaUsuario){
                 print("Escolha: ativar notificações");
               }else{
                 print("escolha: NÃO ativar notificações");
               }

              },
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            
           /*
            Text("Receber notificações?")
           Switch(
             value: _escolhaUsuario,
             onChanged: (bool valor){
               setState(() {
                 _escolhaUsuario = valor;
               });
             },
             ),
             Text("Receber notificações?") */
          ],
        ),
      ),
    );
  }
}
