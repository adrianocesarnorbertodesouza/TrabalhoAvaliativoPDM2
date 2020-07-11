import 'package:flutter/material.dart';

class Telasobre extends StatefulWidget {
  @override
  _TelasobreState createState() => _TelasobreState();
}

class _TelasobreState extends State<Telasobre> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text(""),elevation: 0,),
      body: Column (
        children:<Widget>[
          SizedBox(height: 33),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Container(
                width: 190.0,
                height: 190.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage (
                      'lib/assets/imagens/Sobre.jpg',
                    ),
                  ),
                ),
              ),
            ]
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text(
                "Ola! Sou Adriano César N. Souza\n\n"
                "Este aplicativo pode ser utilizado para auxiliar, qualquer pessoa a fazer\n"
                "a lista de compras, ao dinamizar e diminuir o tempo para esta atividade\n"
                "essencialpara a economia domestica."
              ),
            ]
          ),
        ]
      ),
    );
  }
}