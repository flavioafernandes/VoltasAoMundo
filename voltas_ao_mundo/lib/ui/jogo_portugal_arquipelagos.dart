import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

List<String>ilhas=["Corvo", "Flores", "Graciosa", "Faial", "Pico", "São Jorge", "Terceira","Santa Maria","Madeira","Porto Santo", "Desertas"];

class JogoPortugalArquipelagos extends StatefulWidget {
  @override
  _JogoPortugalArquipelagosState createState() => _JogoPortugalArquipelagosState();
}


class _JogoPortugalArquipelagosState extends State<JogoPortugalArquipelagos> {

  bool isCorvo = false;
  bool isFlores = false;
  bool isGraciosa = false;
  bool isFaial = false;
  bool isPico = false;
  bool isSJorge = false;
  bool isTerceira = false;
  bool isSMiguel = false;
  bool isSMaria = false;
  bool isMadeira = false;
  bool isPSanto = false;
  bool isIDeserta = false;

  TextStyle estiloTexto = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child:
          Row( children: <Widget>[
            Column( children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage('assets/images/mapa_açores.png'))
                ),
                width: 800,
                height: 450,
                child: Stack(
                  children: <Widget>[
                    Text("Arquipélago dos Açores", style: estiloTexto),
                    DragTargetBox(Offset(155, 50), "Corvo", isCorvo),
                    DragTargetBox(Offset(215, 190), "Faial", isFaial),
                    DragTargetBox(Offset(140, 110), "Flores", isFlores),
                    DragTargetBox(Offset(330, 85), "Graciosa", isGraciosa),
                    DragTargetBox(Offset(275, 220), "Pico", isPico),
                    DragTargetBox(Offset(330, 185), "São Jorge", isSJorge),
                    DragTargetBox(Offset(555, 315), "Santa Maria", isSMaria),
                    DragTargetBox(Offset(490, 250), "São Miguel", isSMiguel),
                    DragTargetBox(Offset(455, 160), "Terceira", isTerceira),

                  ],
                ),
              ),
              Container(
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage('assets/images/mapa_madeira.png'))
                ),
                width: 800,
                height: 350,
                child: Stack(
                  children: <Widget>[
                    Text("Arquipélago da Madeira", style: estiloTexto),
                    DragTargetBox(Offset(450, 240), "Desertas", isIDeserta),
                    DragTargetBox(Offset(300, 150), "Madeira", isMadeira),
                    DragTargetBox(Offset(510, 3), "Porto Santo", isPSanto),
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
                              Navigator.of(context).pushNamed("/menuPortugal"),
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
            ]
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    DragBox("São Miguel", isSMiguel),
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
  bool isCorvo = false;
  bool isFlores = false;
  bool isGraciosa = false;
  bool isFaial = false;
  bool isPico = false;
  bool isSJorge = false;
  bool isTerceira = false;
  bool isSMiguel = false;
  bool isSMaria = false;
  bool isMadeira = false;
  bool isPSanto = false;
  bool isIDeserta = false;
  HashMap ilha = new HashMap<String, bool>();

  String setIlha(){

    ilha.putIfAbsent("Corvo", () => isCorvo);
    ilha.putIfAbsent("Flores", () => isFlores);
    ilha.putIfAbsent("Graciosa", () => isGraciosa);
    ilha.putIfAbsent("Faial", () => isFaial);
    ilha.putIfAbsent("Pico", () => isPico);
    ilha.putIfAbsent("São Jorge", () => isSJorge);
    ilha.putIfAbsent("Terceira", () => isTerceira);
    ilha.putIfAbsent("São Miguel", () => isSMiguel);
    ilha.putIfAbsent("Santa Maria", () => isSMaria);
    ilha.putIfAbsent("Madeira", () => isMadeira);
    ilha.putIfAbsent("Porto Santo", () => isPSanto);
    ilha.putIfAbsent("Desertas", () => isIDeserta);

    Random r = new Random();
    int pos;
    String res="";
    if(ilhas.length>0){
      pos=r.nextInt(ilhas.length);
      res=ilhas[pos];
      ilhas.removeAt(pos);
    }
    return res;
  }


  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: widget.nome,
      child: widget.conectado==false ? Text(widget.nome, style: estiloTexto, textAlign: TextAlign.center) : Text(""),
      feedback: Text(widget.nome, style: TextStyle(decoration: TextDecoration.none, color: Colors.black, fontSize: 30), textAlign: TextAlign.center),
      childWhenDragging: Container(child: Text("")),
      onDragCompleted: (){
        setState(() {
          widget.nome = setIlha();
          widget.conectado = ilha[widget.nome];

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
                    ? Transform.translate(offset: Offset(-2,-30), child: GestureDetector(
                  onTap: (){
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        content: Container(
                          height: 300,
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("A cidade de Aveiro é capital de Distrito, situa-se na região centro, tem cerca de 60 mil habitantes, é também sede de município, com uma área de 199 quilómetros quadrados e 73 626 habitantes, distribuídos por 14 freguesias. A elevação de Aveiro a cidade, verifica-se em 1759, no reinado de D. José I.", textAlign: TextAlign.justify,),
                              Text("\nSabia que... ", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              Text("A cidade de Aveiro é conhecida pelos ovos moles e pelos moliceiros", textAlign: TextAlign.justify,)
                            ],
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    decoration: new BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/placa.png'))),
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
                )
                )
                    : Container(
                  width: 90,
                  height: 90,
                  child: Center(
                    child:Image(
                      image: AssetImage('assets/images/pinpoint.png'),
                      height: 20,
                      width: 20,
                    ),
                  ),
                )
            );
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