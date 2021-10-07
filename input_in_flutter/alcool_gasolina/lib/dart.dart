import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";
  void _calcular() {
    double precoAlcool = double.tryParse(_controllerAlcool.text);
    double precoGasolina = double.tryParse(_controllerGasolina.text);
    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Invalido, digite numeros maiores que 0, e sem virgulas(,) utilize o ponto (.)";
      });
    } else {
      /* 
      Se o preço do álcool dividido pelo preço da gasolina for >= 0.7 é melhor abastecer com gasolina, se não é melhor utilizar alcool
      */
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina!";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com álcool!";
        });
      }

      //o controller não precisa estar dentro de um setState para alterar na tela, ele já faz isso no automático.
      // _limparCampos();
    }
  }

  void _limparCampos() {
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou gasolina"),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: _limparCampos),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            //o strech faz os widgets tomar toda a largura da tela
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("imagens/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu veiculo",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Alcool, ex: 1.59"),
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                ),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Gasolina, ex: 6.99"),
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                ),
                controller: _controllerGasolina,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Calcular",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _calcular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _textoResultado,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
