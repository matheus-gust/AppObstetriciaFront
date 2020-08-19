import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/cuidados/depressao_puerperal/depressao_puerperal.dart';
import 'package:obstetricia/UI/components/cuidados/exames/exames_de_triagem_neonatal.dart';

class Cuidados extends StatelessWidget {

  double _opcaoOpacidade = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Cuidados"),
        centerTitle: true,
      ),
      body: Hero(
        tag: "cuidados",
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.blue[300],
            ),
            Padding(
                padding: EdgeInsets.only(
                    right: 10, left: 10, top: 30, bottom: 30),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        color: Colors.blue[300],
                        child: Text(
                          "Depressão Puerperal",
                          style:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DepressaoPuerperal()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        color: Colors.blue[300],
                        child: Text(
                          "Exames de Triagem Neonatal",
                          style:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ExamesTriagemNeonatal()));
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
