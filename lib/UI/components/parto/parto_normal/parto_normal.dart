import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class PartoNormal extends StatefulWidget {
  @override
  _PartoNormalState createState() => _PartoNormalState();
}

class _PartoNormalState extends State<PartoNormal> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
        ),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.purple,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Parto Normal"),
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
                                    "Parto Normal",
                                    style:
                                        TextStyle(fontSize: fontSizeTitulo),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTitulo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Rápida recuperação, facilitando o cuidado com o bebê após o parto. ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Menos riscos de complicações, favorecendo o contato pele a pele imediato com o bebê e o aleitamento.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Menor risco de complicações na próxima gravidez, tornando o próximo parto mais rápido e fácil.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Para o bebê:",
                                    style:
                                        TextStyle(fontSize: fontSizeSubtitulo),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingSubTitulo),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Na maioria das vezes, ele vai direto para o colo da mãe. ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "O bebê nasce no tempo certo, seus sistemas e órgãos são estimulados para a vida por meio das contrações uterinas e da passagem pela vagina.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                              
                            ],
                          ),
                        ))),
              ]),
            )
          ],
        )
      ],
    );
  }
}