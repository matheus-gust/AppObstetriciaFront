import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class Vacinas extends StatefulWidget {
  @override
  _VacinasState createState() => _VacinasState();
}

class _VacinasState extends State<Vacinas> {
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
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Vacinas Gestante",
                style: TextStyle(fontSize: 20, color: Colors.white)),
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
                                  "Planejamento da Gravidez",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                             WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Dupla adulto;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Hepatite B (vacina recombinante) para menores de 20 anos não vacinadas anteriormente; vacina com vírus vivo atenuado (tríplice viral), realizada preferencialmente até 30 dias antes da gestação;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Período gestacional",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Influenza Pandêmica: indicada para todas as gestantes, independente da idade gestacional;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Febre Amarela: contraindicada, salvo em situações de alto risco de exposição;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Tétano: orientar a conduta de acordo com a situação vacinal da gestante;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                          ]))))
        ]))
      ])
    ]);
  }
}