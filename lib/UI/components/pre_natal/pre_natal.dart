import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/pre_natal/consultas_pre_natais/consultas_pre_natais.dart';
import 'package:obstetricia/UI/components/pre_natal/informacoes_sobre_pre_parto/informacoes_sobre_pre_parto.dart';
import 'package:obstetricia/UI/components/pre_natal/situacoes_comuns_na_gestacao/situacoes_comuns_na_gestacao.dart';

class PreNatal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Pré Natal"),
        centerTitle: true,
      ),
      body: Hero(
          tag: "pre-natal",
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.pinkAccent,
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
                          color: Colors.pinkAccent[200],
                          child: Text(
                            "Consultas Pré natais",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ConsultasPreNatais()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.pinkAccent[200],
                          child: Text(
                            "Informação sobre o Pré-Natal",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InformacoesSobrePreParto()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.pinkAccent[200],
                          child: Text(
                            "Situações Comuns na Gestação",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SituacoesComunsNaGestacao()));
                          },
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
