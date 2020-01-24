import 'dart:io';
import 'package:flutter/material.dart';

class MenuInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
              child: new Image.asset('assets/images/backg1.png',
                  fit: BoxFit.fill,
              width: size.width,
              height: size.height,),
          ),
          Center(
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image( image: AssetImage('assets/images/nome.png'),),
                  SizedBox(height: 25),
                  new RawMaterialButton(
                    constraints: BoxConstraints(
                      minHeight: 75,
                      minWidth: 200,
                    ),
                    onPressed: () =>
                        Navigator.of(context).pushNamed("/menuLocais"),
                    child: Column(
                      children: <Widget>[
                        new Icon(Icons.play_arrow,
                          color: Colors.greenAccent,
                          size: 50.0,),
                        new Text("Jogar", style: TextStyle(fontSize: 30, color: Colors.cyan),),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    elevation: 0.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(15.0),
                  ),
                  SizedBox(height: 10),
                  new RawMaterialButton(
                    constraints: BoxConstraints(
                      minHeight: 75,
                      minWidth: 200,
                    ),
                    onPressed: () =>
                        exit(0),
                    child: Column(
                      children: <Widget>[
                        new Icon(Icons.exit_to_app,
                          color: Colors.greenAccent,
                          size: 50.0,),
                        new Text("Sair", style: TextStyle(fontSize: 30, color: Colors.cyan),),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    elevation: 0.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(15.0),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}