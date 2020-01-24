import 'package:flutter/material.dart';

class MenuLocais extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      Size size = MediaQuery
          .of(context)
          .size;
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/images/mododejogo.png'),),
                    SizedBox(height: 25),
                    new RawMaterialButton(
                      constraints: BoxConstraints(
                        minHeight: 75,
                        minWidth: 200,
                      ),
                      onPressed: () =>
                          Navigator.of(context).pushNamed("/menuPortugal"),
                      child: Column(
                        children: <Widget>[
                          new Text("Portugal",
                            style: TextStyle(fontSize: 30, color: Colors
                                .cyan),),
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
                          Navigator.of(context).pushNamed("/jogoEuropaPaises"),
                      child: Column(
                        children: <Widget>[
                          new Text("Europa",
                            style: TextStyle(fontSize: 30, color: Colors
                                .cyan),),
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
                          Navigator.of(context).pushNamed("/jogoContinentesOceanos"),
                      child: Column(
                        children: <Widget>[
                          new Text("Continentes e Oceanos",
                            style: TextStyle(fontSize: 30, color: Colors
                                .cyan),),
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
                          Navigator.of(context).pushNamed("/menuInicial"),
                      child: Column(
                        children: <Widget>[
                          new Text("Voltar",
                            style: TextStyle(fontSize: 30, color: Colors
                                .white),),
                        ],
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      elevation: 0.0,
                      fillColor: Colors.cyan,
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
