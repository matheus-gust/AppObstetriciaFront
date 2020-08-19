import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/anticoncepcao/anticoncepcao/aniconcepcao.dart';
import 'package:obstetricia/UI/components/vacinacao/vacinas/vacinas.dart';
import 'package:obstetricia/UI/components/vacinacao/vacinas_criancas/vacinas_criancas.dart';

class Vacinacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Vacinação"),
        centerTitle: true,
      ),
      body: Hero(
        tag: "vacinacao",
        child: Stack(
            children: <Widget>[
              Container(
                color: Colors.deepOrangeAccent,
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
                          color: Colors.deepOrangeAccent,
                          child: Text(
                            "Vacinas Gestante",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Vacinas()));
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.deepOrangeAccent,
                          child: Text(
                            "Vacinas Crianças",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        VacinasCrianca()));
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