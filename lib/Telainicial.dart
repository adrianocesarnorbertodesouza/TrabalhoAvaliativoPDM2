import 'package:flutter/material.dart';

class Telainicial extends StatefulWidget {
  @override
  _TelainicialState createState() => _TelainicialState();
}

class _TelainicialState extends State<Telainicial> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(""),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context,
                "/Telasobre"
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(70),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         // crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Row(
              children: <Widget>[
                RaisedButton.icon(
                  color: Colors.transparent,
                  elevation: 0,
                  icon: Image.asset(
                    'lib/assets/imagens/listaCompras.png', 
                    width: 70.0,//Largura
                    height: 70.0,//Altura
                  ),
                  label: Text("Produtos"),                  
                  onPressed: () {
                    Navigator.pushNamed(context,
                    "/Telsestoque");
                  },
                ),

                SizedBox(width: 30),

                RaisedButton.icon(
                  color: Colors.transparent,
                  elevation: 0,
                  icon: Image.asset(
                    'lib/assets/imagens/listaCompras.png', 
                    width: 70.0,//Largura
                    height: 70.0,//Altura
                  ),
                  label: Text("btnteste-1"),
                  /*child: Text("Abrir"),*/
                  onPressed: () {
                    Navigator.pushNamed(context,
                    "/Emconstrucao");
                  },
                ),
              ],
            ),
            
            SizedBox(height: 40),

            Row(
              children: <Widget>[
                RaisedButton.icon(
                  color: Colors.transparent,
                  elevation: 0,
                  icon: Image.asset(
                    'lib/assets/imagens/listaCompras.png', 
                    width: 70.0,//Largura
                    height: 70.0,//Altura
                  ),
                  label: Text("Gerar\n Lista"),
                  onPressed: () {
                    Navigator.pushNamed(context,
                    "/Emconstrucao");
                  },
                ),

                SizedBox(width: 30),

                RaisedButton.icon(
                  color: Colors.transparent,
                  elevation: 0,
                  icon: Image.asset(
                    'lib/assets/imagens/listaCompras.png', 
                    width: 70.0,//Largura
                    height: 70.0,//Altura
                  ),
                  label: Text("btnteste-2"),
                  onPressed: () {
                    Navigator.pushNamed(context,
                    "/Emconstrucao");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}