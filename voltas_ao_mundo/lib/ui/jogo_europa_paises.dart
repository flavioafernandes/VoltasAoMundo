import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

List<String>paises=["Áustria", "Bélgica", "Bulgária", "Chipre", "Croácia", "Dinamarca", "Eslováquia", "Eslovénia", "Espanha", "Estónia",
  "Finlândia", "França", "Grécia", "Holanda","Hungria","Irlanda","Itália","Letónia","Lituânia","Luxemburgo","Malta","Polónia","Portugal",
  "Reino Unido","Roménia","Républica Checa","Suécia"
];

class JogoEuropaPaises extends StatefulWidget {
  @override
  _JogoEuropaPaisesState createState() => _JogoEuropaPaisesState();
}

class _JogoEuropaPaisesState extends State<JogoEuropaPaises> {
  bool isAlemanha = false;
  bool isAustria = false;
  bool isBelgica = false;
  bool isBulgaria = false;
  bool isRepCheca = false;
  bool isChipre = false;
  bool isCroacia = false;
  bool isDinamarca = false;
  bool isEslovaquia = false;
  bool isEslovenia = false;
  bool isEspanha = false;
  bool isEstonia = false;
  bool isFinlandia = false;
  bool isFranca = false;
  bool isGrecia = false;
  bool isHungria = false;
  bool isIrlanda = false;
  bool isItalia = false;
  bool isLetonia = false;
  bool isLituania = false;
  bool isLuxemburgo = false;
  bool isMalta = false;
  bool isHolanda = false;
  bool isPolonia = false;
  bool isTugacrl = false;
  bool isReinoUnido = false;
  bool isRomenia = false;
  bool isSuecia = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child:
              Row(children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: AssetImage('assets/images/mapa_europa.png'),
                      fit: BoxFit.fill)),
              width: 950,
              height: 800,
              child: Stack(
                children: <Widget>[
                  DragTargetBox(Offset(360, 390), "Alemanha", isAlemanha),
                  DragTargetBox(Offset(430, 460), "Áustria", isAustria),
                  DragTargetBox(Offset(300, 393), "Bélgica", isBelgica),
                  DragTargetBox(Offset(570, 570), "Bulgária", isBulgaria),
                  DragTargetBox(Offset(685, 740), "Chipre", isChipre),
                  DragTargetBox(Offset(436, 528), "Croácia", isCroacia),
                  DragTargetBox(Offset(357, 275), "Dinamarca", isDinamarca),
                  DragTargetBox(Offset(480, 437), "Eslováquia", isEslovaquia),
                  DragTargetBox(Offset(425, 495), "Eslovénia", isEslovenia),
                  DragTargetBox(Offset(180, 630), "Espanha", isEspanha),
                  DragTargetBox(Offset(550, 220), "Estónia", isEstonia),
                  DragTargetBox(Offset(550, 140), "Finlândia", isFinlandia),
                  DragTargetBox(Offset(270, 490), "França", isFranca),
                  DragTargetBox(Offset(525, 640), "Grécia", isGrecia),
                  DragTargetBox(Offset(310, 360), "Holanda", isHolanda),
                  DragTargetBox(Offset(480, 475), "Hungria", isHungria),
                  DragTargetBox(Offset(145, 340), "Irlanda", isIrlanda),
                  DragTargetBox(Offset(400, 570), "Itália", isItalia),
                  DragTargetBox(Offset(560, 260), "Letónia", isLetonia),
                  DragTargetBox(Offset(540, 300), "Lituânia", isLituania),
                  DragTargetBox(Offset(317, 415), "Luxemburgo", isLuxemburgo),
                  DragTargetBox(Offset(430, 725), "Malta", isMalta),
                  DragTargetBox(Offset(480, 370), "Polónia", isPolonia),
                  DragTargetBox(Offset(120, 650), "Portugal", isTugacrl),
                  DragTargetBox(Offset(225, 360), "Reino Unido", isReinoUnido),
                  DragTargetBox(Offset(560, 500), "Roménia", isRomenia),
                  DragTargetBox(Offset(430, 410), "Républica Checa", isRepCheca),
                  DragTargetBox(Offset(420, 200), "Suécia", isSuecia),
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
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
              child: Center(
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        DragBox("Alemanha", isAlemanha),
                      ],
                    ),
                  ),
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
  bool isAustria = false;
  bool isBelgica = false;
  bool isBulgaria = false;
  bool isRepCheca = false;
  bool isChipre = false;
  bool isCroacia = false;
  bool isDinamarca = false;
  bool isEslovaquia = false;
  bool isEslovenia = false;
  bool isEspanha = false;
  bool isEstonia = false;
  bool isFinlandia = false;
  bool isFranca = false;
  bool isGrecia = false;
  bool isHungria = false;
  bool isIrlanda = false;
  bool isItalia = false;
  bool isLetonia = false;
  bool isLituania = false;
  bool isLuxemburgo = false;
  bool isMalta = false;
  bool isHolanda = false;
  bool isPolonia = false;
  bool isTugacrl = false;
  bool isReinoUnido = false;
  bool isRomenia = false;
  bool isSuecia = false;
  bool isPortugal=false;

  HashMap countries = new HashMap<String, bool>();


  String setPaises(){

    countries.putIfAbsent("Áustria", () => isAustria);
    countries.putIfAbsent("Bélgica", () => isBelgica);
    countries.putIfAbsent("Bulgária", () => isBulgaria);
    countries.putIfAbsent("Chipre", () => isChipre);
    countries.putIfAbsent("Croácia", () => isCroacia);
    countries.putIfAbsent("Dinamarca", () => isDinamarca);
    countries.putIfAbsent("Eslováquia", () => isEslovaquia);
    countries.putIfAbsent("Eslovénia", () => isEslovenia);
    countries.putIfAbsent("Espanha", () => isEspanha);
    countries.putIfAbsent("Estónia", () => isEstonia);
    countries.putIfAbsent("Finlândia", () => isFinlandia);
    countries.putIfAbsent("França", () => isFranca);
    countries.putIfAbsent("Grécia",() => isGrecia);
    countries.putIfAbsent("Holanda", () => isHolanda);
    countries.putIfAbsent("Hungria", () => isHungria);
    countries.putIfAbsent("Irlanda", () => isIrlanda);
    countries.putIfAbsent("Itália", () => isItalia);
    countries.putIfAbsent("Letónia", () => isLetonia);
    countries.putIfAbsent("Lituânia", () => isLituania);
    countries.putIfAbsent("Luxemburgo", () => isLuxemburgo);
    countries.putIfAbsent("Malta", () => isMalta);
    countries.putIfAbsent("Polónia", () => isPolonia);
    countries.putIfAbsent("Portugal", () => isPortugal);
    countries.putIfAbsent("Reino Unido", () => isReinoUnido);
    countries.putIfAbsent("Roménia", () => isRomenia);
    countries.putIfAbsent("Républica Checa", () => isRepCheca);
    countries.putIfAbsent("Suécia", () => isSuecia);



    Random r = new Random();
    int pos;
    String res="";
    if(paises.length>0){
      pos=r.nextInt(paises.length);
      res=paises[pos];
      paises.removeAt(pos);
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
          widget.nome = setPaises();
          widget.conectado=countries[widget.nome];
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
                        offset: Offset(24, 24),
                        child: GestureDetector(
                          child: Container(
                            decoration: new BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/' + widget.data + '.jpg'))),
                            width: 40,
                            height: 40,
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
