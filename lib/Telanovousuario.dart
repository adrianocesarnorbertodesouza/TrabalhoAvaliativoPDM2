import 'package:flutter/material.dart';

class Telanovousuario extends StatefulWidget {

  @override
  _TelanovousuarioState createState() => _TelanovousuarioState();
}

class _TelanovousuarioState extends State<Telanovousuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar novo Usuário"),elevation: 0,
      ),
      body: Column(
        children:<Widget>[
          Icon(
            Icons.perm_identity,
            size:150,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: 'Nome'
            ),
          ),//Descrição
          Padding(//SENHA
            padding: const EdgeInsets.only(top: 16.0),
            child:TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                labelText: 'Senha'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child:TextField(//CONFIRMAÇÃO DE SENHA
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                labelText: 'e-mail'
              ),
            ),
          ),

          Divider(),

          RaisedButton(
            child: Text ('Cadastrar'),
            onPressed:(){
              Navigator.pushNamed(context,
              "/Emconstrucao");
            }
          ),
        ]
      ),
    );
  }
}

