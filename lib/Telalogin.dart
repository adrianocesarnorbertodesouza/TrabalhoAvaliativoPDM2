import 'package:flutter/material.dart';

class Telalogin extends StatefulWidget {
  @override
  _TelaloginState createState() => _TelaloginState();
}

class _TelaloginState extends State<Telalogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/assets/imagens/listaCompras.png',
              width: 300.0,//Largura
              height: 300.0,//Altura
            ),

            TextFormField(//CAMPO IDENTIFICAÇÃO DO USUÁRIO
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(90.0)
                  )
                ),
                labelText: "E-Mail"
              ),
            ),

            SizedBox(height:20),
            TextField(//CAMPO DA SENHA
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(80.0)
                  )
                ),
                labelText: "Senha"
              ),
              obscureText: true,
            ),

            SizedBox(height:20),
            RaisedButton(//BOTÃO ENTRAR
              child: Text (
                "Entrar", style: TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Navigator.pushNamed(context,  //<<<<<<<<<<<<  MEU
                  "/Telainicial"
                );
              },
            ),

            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Novo Usuário? ',
                ),
                InkWell(
                  onTap: () {//CADASTRAR NOVO USUÁRIO
                    Navigator.pushNamed(context,
                    "/Telanovousuario"
                    );
                  },
                  child: Text(
                    ' Cadastre-se!',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    )
                  ),
                )
              ],
            )
          ]
        ),
      )
    );
  }
}
