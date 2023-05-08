import 'dart:async';
import 'package:dice_icons/dice_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tela1 extends StatefulWidget {
  @override
  _Tela1State createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  double fontTitulo = 13;
  double fontTexto = 15;
  double paddintIndicadores = 1;
  double marginIndicadores = 5;

  /**
   * Método de Tela1ização da tela
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
    return Stack(
      //color: corPadrao1, //Colors.white,
      alignment: Alignment.center,
      children: [
        SizedBox.expand(
          child: Container(
            color: Color.fromARGB(255, 20, 22, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //abaixo o alinhamento que coloca no centro ta tela
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: paddintIndicadores),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dado4Lados.png'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3.0)),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Color.fromARGB(255, 255, 132, 0)),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dado6Lados.png'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3.0)),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.yellow),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dado8Lados.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                Container(
                  padding: EdgeInsets.symmetric(vertical: paddintIndicadores),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Colors.lightGreenAccent.shade400),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dado10Lados.png'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3.0)),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Color.fromARGB(255, 0, 255, 162)),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dado12Lados.png'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3.0)),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dado20Lados.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                Container(
                  padding: EdgeInsets.symmetric(vertical: paddintIndicadores),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Colors.purple.shade600),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dado100Lados.png'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3.0)),
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 5, color: Colors.pink.shade300),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dadoLetras.png'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3.0)),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 64, 64, 64),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: paddintIndicadores),
                          onPressed: () {},
                          iconSize: 100,
                          icon: Image.asset('assets/images/dadoCustom.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                          elevation: 5,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: marginIndicadores),
                            width: 200,
                            child: Column(
                              children: [
                                Text("Dados selecionados",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: fontTitulo)),
                                Text("---",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: fontTexto))
                              ],
                            ),
                          )),
                      Card(
                        elevation: 5,
                        child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: marginIndicadores),
                            width: 100,
                            child: Column(
                              children: [
                                Text("Resultado",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: fontTitulo)),
                                Text("-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: fontTexto))
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Container(
                  padding: EdgeInsets.symmetric(vertical: paddintIndicadores),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5, color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 64, 64, 64),
                    shape: BoxShape.rectangle,
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/dadoRolando.png',
                      width: 50,
                    ),
                    label: Text("Rolar os dados!",
                        style: TextStyle(
                            color: Colors.white, fontSize: fontTexto)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
