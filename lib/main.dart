import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jogadados/navegar.dart';

Future<void> main() async {
  runApp(MaterialApp(
      //materialApp pq vamos usar widgets material design
      debugShowCheckedModeBanner: false,
      title: "Joga dados", //titulo da aplicação
      home: Navegar(0) // chamei o login
      ));
}
