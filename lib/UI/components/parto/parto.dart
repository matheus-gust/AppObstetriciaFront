import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/parto/cesarea/cesarea.dart';
import 'package:obstetricia/UI/components/parto/parto_normal/parto_normal.dart';
import 'package:obstetricia/UI/components/parto/sinais_de_alerta/sinais_de_alerta.dart';
class Parto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Parto"),
        centerTitle: true,
      ),
      body: Hero(
          tag: "parto",
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.purpleAccent,
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
                          color: Colors.purpleAccent[200],
                          child: Text(
                            "Cesárea",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Cesarea()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.purpleAccent[200],
                          child: Text(
                            "Parto Normal",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PartoNormal()));
                          },
                        ),
                      ),

                       Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.purpleAccent[200],
                          child: Text(
                            "Sinais de Alerta",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SinaisDeAlerta()));
                          },
                        ),
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}