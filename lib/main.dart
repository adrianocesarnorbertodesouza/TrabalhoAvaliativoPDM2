import 'package:flutter/material.dart';
import 'Emcontrucao.dart';
import 'Telaestoque.dart';
import 'Telaincluirestoque.dart';
import 'Telainicial.dart';
import 'Telalogin.dart';
import 'Telanovousuario.dart';
import 'Telasobre.dart';

void main() {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ListaCompras",
      initialRoute: "/Telalogin",
      routes: {
        "/Emconstrucao":(context) => Emconstrucao(),
        "/Telanovousuario":(context) => Telanovousuario(),
        "/Telalogin":(context) => Telalogin(),
        "/Telainicial":(context) => Telainicial(),
        "/Telasobre":(context) => Telasobre(),
        "/Telsestoque":(context) => Telaestoque(),
        "/Telaincluirestoque":(context) => Telaincluirestoque(),
      },
    ),
  );
}