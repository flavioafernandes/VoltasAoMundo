import 'package:flutter/material.dart';
import 'package:voltas_ao_mundo/ui/jogo_continentes_oceanos.dart';
import 'package:voltas_ao_mundo/ui/jogo_europa_paises.dart';
import 'package:voltas_ao_mundo/ui/jogo_portugal_arquipelagos.dart';
import 'package:voltas_ao_mundo/ui/jogo_portugal_distritos.dart';
import 'package:voltas_ao_mundo/ui/menu_inicial.dart';
import 'package:voltas_ao_mundo/ui/menu_escolha_local.dart';
import 'package:voltas_ao_mundo/ui/menu_escolha_portugal.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //Obrigar a landscape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: 'Voltas ao Mundo',
      routes: <String, WidgetBuilder>{
        '/menuInicial': (BuildContext context) => new MenuInicial(),
        '/menuLocais': (BuildContext context) => new MenuLocais(),
        '/menuPortugal': (BuildContext context) => new MenuPortugal(),
        '/jogoPortugalDistritos': (BuildContext context) => new JogoPortugalDistritos(),
        '/jogoEuropaPaises': (BuildContext context) => new JogoEuropaPaises(),
        '/jogoContinentesOceanos': (BuildContext context) => new JogoContinentesOceanos(),
        '/jogoPortugalArquipelagos': (BuildContext context) => new JogoPortugalArquipelagos(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: MenuInicial(),
    );
  }

}