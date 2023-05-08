import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jogadados/navegar.dart';

class Tela2 extends StatefulWidget {
  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  double fontTitulo = 13;
  double fontTexto = 15;
  double paddintIndicadores = 1;
  double marginIndicadores = 5;

  /**
   * Método de inicialização da tela
   */
  @override
  void initState() {
    super.initState();
  }

  /**
   * método que monta a tela de informativo
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de resultados'),
        backgroundColor: Color.fromARGB(255, 20, 22, 25),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.undo),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Navegar(0)));
            },
          ),
        ],
      ),

      //corpo da aplicação, aqui são setadas as telas
      body: Column(
        children: [
          Row(
            children: [
              Card(
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: marginIndicadores),
                    width: 200,
                    child: Column(
                      children: [
                        Text("Dados selecionados",
                            style: TextStyle(
                                color: Colors.black45, fontSize: fontTitulo)),
                        Text("---",
                            style: TextStyle(
                                color: Colors.black, fontSize: fontTexto))
                      ],
                    ),
                  )),
              Card(
                elevation: 5,
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: marginIndicadores),
                    width: 100,
                    child: Column(
                      children: [
                        Text("Resultado",
                            style: TextStyle(
                                color: Colors.black45, fontSize: fontTitulo)),
                        Text("-",
                            style: TextStyle(
                                color: Colors.black, fontSize: fontTexto))
                      ],
                    )),
              )
            ],
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 48, 50, 54),
    );
  }
}
