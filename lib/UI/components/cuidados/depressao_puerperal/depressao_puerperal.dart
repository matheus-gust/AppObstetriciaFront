import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class DepressaoPuerperal extends StatefulWidget {
  @override
  _DepressaoPuerperalState createState() => _DepressaoPuerperalState();
}

class _DepressaoPuerperalState extends State<DepressaoPuerperal> {
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
          backgroundColor: Colors.blue,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Depressão Puerperal",
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
                                  "Depressão Puerperal",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "O puerpério é a fase pela qual a mulher passa após o nascimento do bebê, na qual podem ocorrer profundas alterações no âmbito social, psicológico e físico, sendo assim, aumentam os riscos para o aparecimento dos transtornos psiquiátricos, sendo o principal deles a depressão.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "A Depressão Puerperal é um transtorno mental de alta prevalência e que provoca alterações emocionais, cognitivas, comportamentais e físicas.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "O quadro depressivo surge, na maioria das vezes, nas duas primeiras semanas após o parto, e traz sérias repercussões tanto para a mãe, como para o recém-nascido.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "O diagnóstico é feito através de dois questionários, que visam principalmente um rastreamento precoce dos sintomas, procurando diminuir as consequências da doença.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                          ]))))
        ]))
      ])
    ]);
  }
}
