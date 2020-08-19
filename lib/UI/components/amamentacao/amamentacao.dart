import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/amamentacao/amamentacao/amamentacao_introducao.dart';
import 'package:obstetricia/UI/components/amamentacao/complicacoes_mamarias/complicacoes_mamarias.dart';

class Amamentacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Amamentação"),
        centerTitle: true,
      ),
      body: Hero(
        tag: "amamentacao",
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.green[300],
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
                        color: Colors.green[300],
                        child: Text(
                          "Amamentação",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AmamentacaoIntroducao()));
                        },
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        color: Colors.green[300],
                        child: Text(
                          "Complicações mamarias",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ComplicacoesMamarias()));
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
