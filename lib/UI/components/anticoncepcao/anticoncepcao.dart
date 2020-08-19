import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/anticoncepcao/anticoncepcao/aniconcepcao.dart';
import 'package:obstetricia/UI/components/anticoncepcao/barreira/anticoncepcao_barreira.dart';
import 'package:obstetricia/UI/components/anticoncepcao/comportamentais/comportamentais.dart';
import 'package:obstetricia/UI/components/anticoncepcao/definitivos/definitivos.dart';
import 'package:obstetricia/UI/components/anticoncepcao/emergencia/emergencia.dart';
import 'package:obstetricia/UI/components/anticoncepcao/hormonal/hormonal.dart';
import 'package:obstetricia/UI/components/anticoncepcao/intrauterinos/intrauterinos.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';

class Anticoncepcao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Anticoncepção", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:  Hero(
          tag: "anticoncepcao",
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.yellowAccent,
              ),
              Padding(
                  padding:
                      EdgeInsets.only(right: 10, left: 10, top: 30, bottom: 30),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.yellow,
                          child: Text(
                            "Introdução",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AnticoncepcaoIntro()));
                          },
                        ),
                      ),

                      WidgetDeTextosPersonalizaveis(padding: EdgeInsets.all(20),
                      texto: Text("Métodos: ", style: TextStyle(fontSize: 25),),
                      ),

                       Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.yellow,
                          child: Text(
                            "Comportamentais",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Comportamentais()));
                          },
                        ),
                      ),

                       Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.yellow,
                          child: Text(
                            "Barreira",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AnticoncepcaoBarreira()));
                          },
                        ),
                      ),

                       Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.yellow,
                          child: Text(
                            "Dispositivos Intrauterinos",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Intrauterinos()));
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.yellow,
                          child: Text(
                            "Hormonal",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Hormonal()));
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.yellow,
                          child: Text(
                            "Contracepção de Emergência",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AnticoncepcaoEmergencia()));
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.yellow,
                          child: Text(
                            "Métodos Definitivos",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Definitivos()));
                          },
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
    );
  }
}
