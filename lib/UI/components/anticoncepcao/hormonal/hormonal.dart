import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class Hormonal extends StatefulWidget {
  @override
  _HormonalState createState() => _HormonalState();
}

class _HormonalState extends State<Hormonal> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        color: Colors.white,
      ),
      CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          floating: true,
          snap: true,
          backgroundColor: Colors.yellowAccent,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Anticoncepção hormonal",
                style: TextStyle(fontSize: 20, color: Colors.black)),
            centerTitle: true,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
              padding: EdgeInsets.all(10),
              child: Material(
                  borderRadius: BorderRadius.circular(6),
                  elevation: 2.0,
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Anticoncepção hormonal",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "A anticoncepção hormonal é a utilização de drogas, classificadas como hormônios, em dose e modo adequados para impedir a ocorrência de uma gravidez não desejada ou não programada, sem qualquer restrição às relações sexuais.",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "São eles: ",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Contraceptivos orais (Combinado ou só de progestágeno, minipílula);",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Injetáveis: combinados (Estrógeno e Progetágeno) mensais ou só de progestágeno, trimestral;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Implantes;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Anéis vaginais;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Adesivos cutâneos;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Pílulas vaginais;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                          ]))))
        ]))
      ])
    ]);
  }
}
