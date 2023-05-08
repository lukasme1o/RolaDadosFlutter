import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jogadados/navegar.dart';

class Tela3 extends StatefulWidget {
  @override
  _Tela3State createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações sobre o aplicativo'),
        backgroundColor: Color.fromARGB(255, 20, 22, 25),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.undo),
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Navegar(0)));
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
            'Esse trabalho foi feito por Thaciane Oliveira, Rafael Sousa e Lucas Melo Arantes.\n Esse aplicativo consiste em um rolador de dados digital.\n'
            'Que ajudará jogos de tabuleiros, como, Banco Imobiliário, Ludo,\n partidas de RPG de mesa e outros jogos que precisam de testes de dados.',
            style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Color.fromARGB(255, 59, 59, 59),
    );
  }
}
