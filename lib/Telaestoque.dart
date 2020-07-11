import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:newprojetopratico/model/produto.dart';

class Telaestoque extends StatefulWidget {
  @override
  _TelaestoqueState createState() => _TelaestoqueState();
}

class _TelaestoqueState extends State<Telaestoque> {

  //Conexão Fluter+Firebase
  final db = Firestore.instance;
  final String colecao = "produtos";

  //Lista dinâmica para manipulação dos dados
  List<Produtos> lista = List();

  //Stream para "ouvir" o Firebase
  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

  //cancelar o listen, caso a coleção esteja vazia.
    listen?.cancel();

  //retornar dados da coleção e inserir na lista dinâmica
    listen = db.collection(colecao).snapshots().listen((res) {
      setState(() {
        lista = res.documents
            .map((doc) => Produtos.fromMap(doc.data, doc.documentID))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    listen?.cancel();
    super.dispose();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: () {
            Navigator.pushNamed(
              context,"/Telaincluirestoque"
              );
            },
          )
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(

          //fonte de dados
          stream: db.collection(colecao).snapshots(),

          //exibição dos dados
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                List<DocumentSnapshot> docs = snapshot.data.documents;
                return ListView.builder(
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          lista[index].descricao,
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(lista[index].valor.toStringAsFixed(2),
                            style: TextStyle(fontSize: 16)),
                        trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                             db.collection(colecao).document(lista[index].id).delete();
                            }),

                        onTap: () {
                          Navigator.pushNamed(
                              context, 
                              "/Telaincluirestoque",
                              arguments: lista[index].id
                          );
                        },
                      );
                    });
            }
          }
      ),
    );
  }
}

class ListaProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Procurar produtos",
                  hintText: "Informe o produto",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0)
                    ),
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),

            Text("Produtos",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20,),

            ExpansionTile(
              //leading: Icon(Icons.person_outline),
              title: Text("Arroz", style: TextStyle(fontSize: 22)),
              //subtitle: Text("(16) 3333-5678"),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),

            ExpansionTile(
              title: Text("Feijão", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Macarrão", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Farinha", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Valor 1"),
                Text("Valor 2"),
                Text("Valor 3"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Ovo", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Óleo", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Azeite", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Vinagre", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Sal", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
            
            ExpansionTile(
              title: Text("Pimenta do Reino", style: TextStyle(fontSize: 22)),
              trailing: Icon(Icons.add),
              children: <Widget>[
                Text("Quantidade"),
                Text("Valor 1"),
                Text("Valor 2"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}