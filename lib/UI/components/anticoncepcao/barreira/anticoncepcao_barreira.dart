import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class AnticoncepcaoBarreira extends StatefulWidget {
  @override
  _AnticoncepcaoBarreiraState createState() => _AnticoncepcaoBarreiraState();
}

class _AnticoncepcaoBarreiraState extends State<AnticoncepcaoBarreira> {
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
            title: const Text("Métodos de Barreira",
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
                                  "Métodos de Barreira",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Consistem na utilização de aparelhos que impedem a subida do espermatozoide no trato genital feminino. Tais aparelhos podem ser utilizados pelo homem ou pela mulher e agem como obstáculos mecânicos.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Os métodos são:",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Preservativo Masculino;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Preservativo Feminino;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Espermicidas;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Diafragma;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Capuz Cervical;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                          ]))))
        ]))
      ])
    ]);
  }
}
