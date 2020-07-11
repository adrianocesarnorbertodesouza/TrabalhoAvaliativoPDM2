import 'package:flutter/material.dart';

class Emconstrucao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/assets/imagens/Desenvolvendo.png'
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(""),
            //backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ]
    );
  }
}