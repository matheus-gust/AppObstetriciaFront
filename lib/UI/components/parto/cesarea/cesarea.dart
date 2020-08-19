import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class Cesarea extends StatefulWidget {
  @override
  _CesareaState createState() => _CesareaState();
}

class _CesareaState extends State<Cesarea> {
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
                title: const Text("Cesarea"),
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
                                    "Cesarea",
                                    style:
                                        TextStyle(fontSize: fontSizeTitulo),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTitulo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Mais dor e dificuldade para andar e cuidar do bebê após a cirurgia.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Mais riscos de ter febre, infecção, hemorragia e interferência no aleitamento.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Maior risco de complicações na próxima gravidez.",
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
                                    "Mais riscos de nascer prematuro, ficar na incubadora, ser afastado da mãe e demorar a ser amamentado. ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Mais riscos de desenvolver alergias e problemas respiratórios na idade adulta.",
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