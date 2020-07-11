import 'package:flutter/material.dart';

class Telaincluirestoque extends StatefulWidget {

  @override
  _TelaincluirestoqueState createState() => _TelaincluirestoqueState();
}

class _TelaincluirestoqueState extends State<Telaincluirestoque> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar novo Item"),elevation: 0,
      ),
      body: Column(
        children:<Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Descrição'),
          ),//Descrição
          Padding(//Quantidade
            padding: const EdgeInsets.only(top: 16.0),
            child:TextField(
              decoration: InputDecoration(labelText: 'Quantidade'),
               keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child:TextField(//Valor
              decoration: InputDecoration(labelText: 'Valor'),
              keyboardType: TextInputType.number,
            ),
          ),

          Divider(),

          RaisedButton(
            child: Text ('Cadastrar'),
            onPressed:(){
              Navigator.pushNamed(context,
              "/Telsestoque");
            }
          ),
        ]
      ),
    );
  }
}

