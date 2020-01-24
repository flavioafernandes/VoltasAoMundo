import 'dart:collection';
import 'dart:math';
import 'package:flutter/material.dart';

int sad = 0;
List<String>distritos=["Beja", "Braga", "Bragança", "Castelo Branco", "Coimbra","Évora", "Faro", "Guarda", "Leiria", "Lisboa","Portalegre", "Porto", "Santarém", "Setúbal", "Viana do Castelo", "Vila Real", "Viseu"];


class JogoPortugalDistritos extends StatefulWidget {

  @override
  _JogoPortugalDistritosState createState() => _JogoPortugalDistritosState();
}

class _JogoPortugalDistritosState extends State<JogoPortugalDistritos> {
  bool isAveiro = false;
  bool isBeja = false;
  bool isBraga = false;
  bool isBraganca = false;
  bool isCasteloBranco = false;
  bool isCoimbra = false;
  bool isEvora = false;
  bool isFaro = false;
  bool isGuarda = false;
  bool isLeiria = false;
  bool isLisboa = false;
  bool isPortalegre = false;
  bool isPorto = false;
  bool isSanterem = false;
  bool isSetubal = false;
  bool isVianaDoCastelo = false;
  bool isVilaReal = false;
  bool isViseu = false;

  @override
  Widget build(BuildContext context) {
    sad = 0;
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child:
            Row(children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage('assets/images/portugal_distritos.png'))),
            width: 850,
            height: 800,
            child: Stack(
              children: <Widget>[
                DragTargetBox(Offset(300, 7), "Viana do Castelo", isVianaDoCastelo),
                DragTargetBox(Offset(310, 195), "Aveiro", isAveiro),
                DragTargetBox(Offset(390, 620), "Beja", isBeja),
                DragTargetBox(Offset(340, 55), "Braga", isBraga),
                DragTargetBox(Offset(500, 75), "Bragança", isBraganca),
                DragTargetBox(Offset(400, 515), "Évora", isEvora),
                DragTargetBox(Offset(325, 110), "Porto", isPorto),
                DragTargetBox(Offset(420, 30), "Vila Real", isVilaReal),
                DragTargetBox(Offset(385, 160), "Viseu", isViseu),
                DragTargetBox(Offset(467, 195), "Guarda", isGuarda),
                DragTargetBox(Offset(265, 330), "Leiria", isLeiria),
                DragTargetBox(Offset(365, 255), "Coimbra", isCoimbra),
                DragTargetBox(Offset(445, 310), "Castelo Branco", isCasteloBranco),
                DragTargetBox(Offset(220, 450), "Lisboa", isLisboa),
                DragTargetBox(Offset(315, 395), "Santarém", isSanterem),
                DragTargetBox(Offset(410, 400), "Portalegre", isPortalegre),
                DragTargetBox(Offset(295, 555), "Setúbal", isSetubal),
                DragTargetBox(Offset(365, 710), "Faro", isFaro),
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
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      DragBox("Aveiro", isAveiro),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
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
  bool isAveiro = false;
  bool isBeja = false;
  bool isBraga = false;
  bool isBraganca = false;
  bool isCasteloBranco = false;
  bool isCoimbra = false;
  bool isEvora = false;
  bool isFaro = false;
  bool isGuarda = false;
  bool isLeiria = false;
  bool isLisboa = false;
  bool isPortalegre = false;
  bool isPorto = false;
  bool isSanterem = false;
  bool isSetubal = false;
  bool isVianaDoCastelo = false;
  bool isVilaReal = false;
  bool isViseu = false;
  HashMap cities = new HashMap<String, bool>();

  String setDistrito(){

    cities.putIfAbsent("Beja", () => isBeja);
    cities.putIfAbsent("Braga", () => isBraga);
    cities.putIfAbsent("Bragança", () => isBraganca);
    cities.putIfAbsent("Castelo Branco", () => isCasteloBranco);
    cities.putIfAbsent("Coimbra", () => isCoimbra);
    cities.putIfAbsent("Évora", () => isEvora);
    cities.putIfAbsent("Faro", () => isFaro);
    cities.putIfAbsent("Guarda", () => isGuarda);
    cities.putIfAbsent("Leiria", () => isLeiria);
    cities.putIfAbsent("Lisboa", () => isLisboa);
    cities.putIfAbsent("Portalegre", () => isPortalegre);
    cities.putIfAbsent("Porto", () => isPorto);
    cities.putIfAbsent("Santarém", () => isSanterem);
    cities.putIfAbsent("Setúbal", () => isSetubal);
    cities.putIfAbsent("Viana do Castelo", () => isVianaDoCastelo);
    cities.putIfAbsent("Vila Real", () => isVilaReal);
    cities.putIfAbsent("Viseu", () => isViseu);

    Random r = new Random();
    int pos;
    String res="";
    if(distritos.length>0){
      pos=r.nextInt(distritos.length);
      res=distritos[pos];
      distritos.removeAt(pos);
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: widget.nome,
      child: widget.conectado==false ? Image(image: AssetImage('assets/images/'+widget.nome+'.png'), width: 400, height: 400) : Text(""),
      childWhenDragging: Container(child: Text("")),
      onDragCompleted: (){
        setState(() {
          widget.nome = setDistrito();
          widget.conectado=cities[widget.nome];
        });
      },
      feedback: Image(image: AssetImage('assets/images/'+widget.nome+'.png'), width: 150, height: 150),

    );
  }
}

class DragTargetBox extends StatefulWidget{
  final Offset posicao;
  final String data;
  bool conectado = false;

  DragTargetBox(this.posicao, this.data, this.conectado);

  @override
  _DragTargetBoxState createState() => _DragTargetBoxState();

}

class _DragTargetBoxState extends State<DragTargetBox> {
  HashMap map;
  HashMap perguntas = new HashMap<int, List<String>>();
  String generalInfo;
  String habitantes;
  String municipios;
  String connected = "";
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }


  void infoDistrict(){
    map = new HashMap<String, List<String>>();
    List<String> aveiro = ["Aveiro é conhecido pelos ovos moles e pelos famosos moliceiros","715 000 habitantes","19 municípios"];
    List<String> beja = ["A torre do castelo de Beja tem 40 metros de altura, tornando-se assim a mais alta da Península Ibérica", "153 000 habitantes","14 municípios"];
    List<String> braga = ["Braga foi a capital Europeia da Juventude em 2012", "848 000 habitantes","14 municípios"];
    List<String> braganca = ["A Praia do Azibo em Macedo de Cavaleiros recebeu bandeira azul pelas suas infraestruturas e limpeza", "136 000 habitantes","12 municípios"];
    List<String> castelobranco = ["Os habitates de Castelo Branco são os albicastrenses", "196 000 habitantes","11 municípios"];
    List<String> coimbra = ["A Universidade de Coimbra é a mais antiga de Portugal e das mais antigas do mundo, fundada em 1290", "430 000 habitantes","17 municípios"];
    List<String> evora = ["A cidade de Évora é considerada pela UNESCO como património mundial da Humanidade", "166 000 habitantes","14 municípios"];
    List<String> faro = ["Na época do verão a população triplica devido à grande afluência turística", "451 000 habitantes","16 municípios"];
    List<String> guarda = ["É conhecida como a cidade dos 5 F's: Forte, Farta, Fria, Fiel e Formosa", "161 000 habitantes","14 municípios"];
    List<String> leiria = ["O Mosteiro da Batalha foi mandado construir por D.João I depois da vitória contras os castelhanos na batalha de Aljubarrota", "470 000 habitantes","16 municípios"];
    List<String> lisboa = ["A cidade de Lisboa é conhecida como Cidade das 7 colinas. É também a capital de Portugal", "2 250 000 habitantes","16 municípios"];
    List<String> portalegre = ["Portalegre era conhecida como Cidade dos 7 conventos devido à importância que estes tinham no passado", "118 000 habitantes","15 municípios"];
    List<String> porto = ["O Parque da cidade do Porto é o único parque urbano da Europa com frente marítima","1 817 000 habitantes","18 municípios"];
    List<String> santarem = ["A Feira Nacional da Agricultura realiza-se todos os anos em Junho em Santarém","453 000 habitantes","21 municípios"];
    List<String> setubal = ["As touradas prevalecem como um dos elementos característicos da cultura deste distrito","851 000 habitantes","13 municípios"];
    List<String> viana = ["A origem do nome deve-se ao facto de um jovem ao apaixonar-se por ela, sempre que a conseguia ver numa janela do castelo saía pelas ruas a correr de alegria gritando: Vi a Ana do Castelo! Vi a Ana do Castelo!","245 000 habitantes","10 municípios"];
    List<String> vila = ["Os habitantes de Vila Real são os vila-realenses","207 000 habitantes","14 municípios"];
    List<String> viseu = ["Crê-se ter sido Viseu o local de nascimento do herói lusitano Viriato, dando também nome a um doce típico daquela região","378 000 habitantes","24 municípios"];

    map.putIfAbsent("Aveiro", () => aveiro);
    map.putIfAbsent("Beja", () => beja);
    map.putIfAbsent("Braga", () => braga);
    map.putIfAbsent("Bragança", () => braganca);
    map.putIfAbsent("Castelo Branco", () => castelobranco);
    map.putIfAbsent("Coimbra", () => coimbra);
    map.putIfAbsent("Évora", () => evora);
    map.putIfAbsent("Faro", () => faro);
    map.putIfAbsent("Guarda", () => guarda);
    map.putIfAbsent("Leiria", () => leiria);
    map.putIfAbsent("Lisboa", () => lisboa);
    map.putIfAbsent("Portalegre", () => portalegre);
    map.putIfAbsent("Porto", () => porto);
    map.putIfAbsent("Santarém", () => santarem);
    map.putIfAbsent("Setúbal", () => setubal);
    map.putIfAbsent("Viana do Castelo", () => viana);
    map.putIfAbsent("Vila Real", () => vila);
    map.putIfAbsent("Viseu", () => viseu);
  }

  void getDistrictInfo(String data){
    List<String> info = map[data];
    generalInfo = info[0];
    habitantes = info[1];
    municipios = info[2];
  }

  @override
  Widget build(BuildContext context) {
    infoDistrict();
    infoPerguntas();
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
                      onTap: () {
                        getDistrictInfo(widget.data);
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.cyan,
                                content: Container(
                                  height: 300,
                                  width: 300,
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Sabias que...\n",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22), textAlign: TextAlign.justify,
                                      ),
                                      Text(
                                        generalInfo.toString(),
                                        style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "\n\n" + habitantes.toString(),
                                        style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "\n\n" + municipios.toString(),
                                        style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
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
            if (data == widget.data) {
              return true;
            } else
              return false;
          },
          onAccept: (data) {
            setState(() {
              widget.conectado = true;
              sad++;
            });

            if(sad == 1){
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  backgroundColor: Colors.cyan,
                  content: Container(
                    color: Colors.cyan,
                    width: 100,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.info,
                          color: Colors.white,
                          size: 50.0,),
                        SizedBox(height: 25),
                        Text("Clica na placa para obter informação sobre o distrito\n", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                );
              });
            }

            if (sad == 18) {
              List<String> random = getFinalQuestion();
              String pergunta = random[0];
              String resposta = random[1];
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.cyan,
                      content: Container(
                        height: 250,
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Pontos Bónus\n",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,
                            ),
                            Text(
                              pergunta,
                              textAlign: TextAlign.justify, style: TextStyle(fontSize: 18),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText:
                                  'Resposta (com maíusculas e acentos'),
                              controller: myController,
                            ),
                            SizedBox(height: 10),
                            new RawMaterialButton(
                              constraints: BoxConstraints(
                                minHeight: 50,
                                minWidth: 50,
                              ),
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                                String texto;
                                if (resposta.compareTo(myController.text) ==
                                    0) {
                                  texto = "Ganhaste";
                                } else {
                                  texto = "Perdeste";
                                }
                                showAlertDialog(context, texto);
                              },
                              child: Column(
                                children: <Widget>[
                                  new Text("Responder",
                                    style: TextStyle(fontSize: 16, color: Colors
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
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }

  List<String> getFinalQuestion() {
    print("Tamanho: " + perguntas.length.toString());
    return perguntas[Random().nextInt(perguntas.length)+1];
  }

  showAlertDialog(BuildContext dialogcontext, String texto) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.cyan,
      content: Container(
        height: 150,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              texto + " os pontos bónus!",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            new RawMaterialButton(
              constraints: BoxConstraints(
                minHeight: 50,
                minWidth: 50,
              ),
              onPressed: () => Navigator.of(context).pushNamed("/menuPortugal"),
              child: Column(
                children: <Widget>[
                  new Text("Terminar",
                    style: TextStyle(fontSize: 16, color: Colors
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
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void infoPerguntas() {
    perguntas.putIfAbsent(
        1, () => ["Qual é o distrito mais a sul do país?", "Faro"]);
    perguntas.putIfAbsent(
        2, () => ["Qual é o distrito mais a norte do país?", "Viana do Castelo"]);
    perguntas.putIfAbsent(
        3, () => ["Qual é a cidade conhecida como o berço de Portugal?", "Guimarães"]);
    perguntas.putIfAbsent(
        4, () => ["Quem foi o primeiro rei de Portugal?", "D. Afonso Henriques"]);
    perguntas.putIfAbsent(
        5, () => ["Qual é a capital do país?", "Lisboa"]);
    perguntas.putIfAbsent(
        6, () => ["Que cidade é conhecida como a cidade dos 7 conventos?", "Portalegre"]);
    perguntas.putIfAbsent(
        7, () => ["Em que distrito fica o Mosteiro da Batalha?", "Leiria"]);
    perguntas.putIfAbsent(
        8, () => ["Em que cidade fica a universidade mais antiga de Portugal?", "Coimbra"]);
  }
}
