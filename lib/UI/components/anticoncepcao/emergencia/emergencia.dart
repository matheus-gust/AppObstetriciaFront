import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class AnticoncepcaoEmergencia extends StatefulWidget {
  @override
  _AnticoncepcaoEmergenciaState createState() => _AnticoncepcaoEmergenciaState();
}

class _AnticoncepcaoEmergenciaState extends State<AnticoncepcaoEmergencia> {
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
            title: const Text("Contracepção de Emergencia",
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
                                  "Contracepção de Emergencia",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                             WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Consiste na utilização de medicamentos ou dispositivos após uma relação desprotegida. As formas mais difundidas para a realização de anticoncepção de emergência, são eles a “Pílula do dia seguinte” e o DIU de cobre.",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingParagrafo),
                          ]))))
        ]))
      ])
    ]);
  }
}