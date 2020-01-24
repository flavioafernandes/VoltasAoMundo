import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

List<String>m=["América do Norte", "América do Sul", "Antártico", "Antártida","Ásia","Atlântico","Europa","Oceania","Glacial Ártico","Índico","Pacífico"];

class JogoContinentesOceanos extends StatefulWidget {
  @override
  _JogoContinentesOceanosState createState() => _JogoContinentesOceanosState();
}

class _JogoContinentesOceanosState extends State<JogoContinentesOceanos> {
  bool isAfrica = false;
  bool isAntartida = false;
  bool isAmericaNorte = false;
  bool isAmericaSul = false;
  bool isAsia = false;
  bool isEuropa = false;
  bool isOceania = false;
  bool isAtlantico = false;
  bool isPacifico = false;
  bool isIndico = false;
  bool isAntartico = false;
  bool isGlacialArtico = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child:
              Row( children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: AssetImage('assets/images/mapa_mundo.png'),
                      fit: BoxFit.fill)),
              width: 900,
              height: 650,
              child: Stack(
                children: <Widget>[
                  DragTargetBox(Offset(425, 250), "África", isAfrica),
                  DragTargetBox(Offset(110, 100), "América do Norte", isAmericaNorte),
                  DragTargetBox(Offset(210, 350), "América do Sul", isAmericaSul),
                  DragTargetBox(Offset(450, 585), "Antártida", isAntartida),
                  DragTargetBox(Offset(600, 120), "Ásia", isAsia),
                  DragTargetBox(Offset(400, 80), "Europa", isEuropa),
                  DragTargetBox(Offset(720, 390), "Oceania", isOceania),
                  DragTargetBox(Offset(350, 520), "Antártico", isAntartico),
                  DragTargetBox(Offset(250, 180), "Atlântico", isAtlantico),
                  DragTargetBox(Offset(570, 330), "Índico", isIndico),
                  DragTargetBox(Offset(365, -15), "Glacial Ártico", isGlacialArtico),
                  DragTargetBox(Offset(80, 330), "Pacífico", isPacifico),
                  Positioned(
                    bottom:0.0,
                    left: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RawMaterialButton(
                        constraints: BoxConstraints(
                          minHeight: 75,
                          minWidth: 75,
                        ),
                        onPressed: () =>
                            Navigator.of(context).pushNamed("/menuLocais"),
                        child: Column(
                          children: <Widget>[
                            new Icon(Icons.cancel,
                              color: Colors.greenAccent,
                              size: 30.0,),
                            new Text("Menu",
                              style: TextStyle(fontSize: 20, color: Colors
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
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 180),
              child: Center(
                child: Column(
                  children: <Widget>[
                    DragBox("África", isAfrica),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class DragBox extends StatefulWidget {
  String nome;
  bool conectado;

  DragBox(this.nome, this.conectado);

  @override
  _DragBoxState createState() => _DragBoxState();
}

class _DragBoxState extends State<DragBox> {
  TextStyle estiloTexto = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  bool isAfrica = false;
  bool isAntartida = false;
  bool isAmericaNorte = false;
  bool isAmericaSul = false;
  bool isAsia = false;
  bool isEuropa = false;
  bool isOceania = false;
  bool isAtlantico = false;
  bool isPacifico = false;
  bool isIndico = false;
  bool isAntartico = false;
  bool isGlacialArtico = false;
  HashMap mundo = new HashMap<String, bool>();
  String setMundo(){

    mundo.putIfAbsent("América do Norte", () => isAmericaNorte);
    mundo.putIfAbsent("América do Sul", () => isAmericaSul);
    mundo.putIfAbsent("Antártico", () => isAntartico);
    mundo.putIfAbsent("Antártida", () => isAntartida);
    mundo.putIfAbsent("Ásia", () => isAsia);
    mundo.putIfAbsent("Atlântico", () => isAtlantico);
    mundo.putIfAbsent("Europa", () => isEuropa);
    mundo.putIfAbsent("Oceania", () => isOceania);
    mundo.putIfAbsent("Glacial Ártico", () => isGlacialArtico);
    mundo.putIfAbsent( "Índico", () => isIndico);
    mundo.putIfAbsent("Pacífico", () => isPacifico);

    Random r = new Random();
    int pos;
    String res="";
    if(m.length>0){
      pos=r.nextInt(m.length);
      res=m[pos];
      m.removeAt(pos);
    }
    return res;
  }
  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: widget.nome,
      child: widget.conectado == false
          ? Text(widget.nome, style: estiloTexto, textAlign: TextAlign.center)
          : Text(""),
      feedback: Text(widget.nome,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              fontSize: 30),
          textAlign: TextAlign.center),
      childWhenDragging: Container(child: Text("")),
      onDragCompleted: () {
        setState(() {
          widget.nome = setMundo();
          widget.conectado=mundo[widget.nome];
        });
      },
    );
  }
}

class DragTargetBox extends StatefulWidget {
  final Offset posicao;
  final String data;
  bool conectado = false;

  DragTargetBox(this.posicao, this.data, this.conectado);

  @override
  _DragTargetBoxState createState() => _DragTargetBoxState();
}

class _DragTargetBoxState extends State<DragTargetBox> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.posicao.dx,
      top: widget.posicao.dy,
      child: Container(
        child: DragTarget(
          builder: (context, List<String> candidateData, rejectedData) {
            return Center(
                child: widget.conectado
                    ? Transform.translate(
                        offset: Offset(-2, -30),
                        child: GestureDetector(
                          child: Container(
                            decoration: new BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/placa.png'))),
                            width: 90,
                            height: 90,
                            child: Center(
                              child: Container(
                                alignment: Alignment(0.0, -0.3),
                                child: Text(
                                  widget.data,
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ))
                    : Container(
                        width: 90,
                        height: 90,
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/images/pinpoint.png'),
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ));
          },
          onWillAccept: (data) {
            if (data == widget.data)
              return true;
            else
              return false;
          },
          onAccept: (data) {
            setState(() {
              widget.conectado = true;
            });
          },
        ),
      ),
    );
  }
}
