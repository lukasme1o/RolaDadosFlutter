//import 'dart:js';

//import 'dart:html';
import 'dart:io';
import 'dart:ui';
import 'package:dice_icons/dice_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jogadados/screens/tela1.dart';
import 'package:jogadados/screens/tela2.dart';
import 'package:jogadados/screens/tela3.dart';

//indice de seleção da tela pelo menuBottomNavigation
int _selectedIndex = 0;
//vetor de telas a serem utilizadas como escolhas do menuBottomNavigation
List<Widget> _stOptions = <Widget>[
  Tela1(),
  Tela2(),
  Tela3(),
];

class Navegar extends StatefulWidget {
  final _opcao;

  //contrutor passando o indice da tela selecionada
  Navegar(this._opcao);

  @override
  _NavegarState createState() => _NavegarState(this._opcao);
}

class _NavegarState extends State<Navegar> {
  //construtor
  _NavegarState(this._opcao);

  //indice de seleção da tela pelo menuBottomNavigation
  int _opcao;

  @override
  void initState() {
    super.initState();
    _selectedIndex = _opcao;
  }

  /// * Método que força a tela ser "Retrato"
  void _portraitModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  ///* Método do evento de click do BN
  //@override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// * Método chamado no momento em que o usuário deseja sair da aplicação,
  /// * ele gera um Dialog perguntando se realmente é isso que o usuário deseja

  Future<bool> _onSair() {
    Future<bool?> resp = showDialog<bool>(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Fechar App?'),
        content: new Text('Deseja sair do App?'),
        actions: <Widget>[
          new TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('Não'),
          ),
          new TextButton(
            onPressed: () {
              exit(0);
            },
            child: new Text('Sim'),
          ),
        ],
      ),
    );
    if (resp == null || resp == false) {
      return retorno(false);
    } else {
      return retorno(true);
    }
  }

  //função para retorno true ou false de auxilio
  Future<bool> retorno(bool x) async {
    if (x) {
      return true;
    } else
      return false;
  }

  //InAppWebViewController _webViewRadio; //webview da rádio no BN
  //bool _isLoadingPage = true; //flag que indica se a webview está carregado
  double progress =
      0; //flag que indiga a porcentagem de carregamento da webview

  /// * Método de construção de componentes da tela de BN,
  /// * esta tela ecapsula demais telas exibidas pelas opções do BN
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return WillPopScope(
        //uso esta widguet para fazer a verificação de saída da aplicação
        onWillPop: _onSair,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Jogar dados"),
            backgroundColor: Color.fromARGB(255, 22, 31, 79),
            actions: <Widget>[
              // botão de saida da aplicação
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  _onSair();
                },
              ),
            ],
          ),

          //corpo da aplicação, aqui são setadas as telas
          body: _stOptions.elementAt(
            _selectedIndex,
          ),

          bottomSheet: Container(
            color: Colors.greenAccent,
            height: 1,
          ),

          //aqui é construido o NavigationDrawer
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                // Lista de opções do NavDrawer
                ListTile(
                    leading: Icon(DiceIcons.dice6),
                    title: Text("Jogar dados"),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Navegar(0)));
                    }),
                ListTile(
                    leading: Icon(Icons.history),
                    title: Text("Histórico"),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Navegar(1)));
                      //Navigator.pop(context);
                    }),
                ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("Sobre"),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Navegar(2)));
                      //Navigator.pop(context);
                    }),
                ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text("Sair do App"),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {
                      _onSair();
                    }),
              ],
            ),
          ),
        ));
  }
}
