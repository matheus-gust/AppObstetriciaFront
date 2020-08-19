import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class SinaisDeAlerta extends StatefulWidget {
  @override
  _SinaisDeAlertaState createState() => _SinaisDeAlertaState();
}

class _SinaisDeAlertaState extends State<SinaisDeAlerta> {
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
                title: const Text("Sinais de Alerta"),
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
                                    "Sinais de Alerta",
                                    style: TextStyle(fontSize: fontSizeTitulo),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTitulo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Procure o serviço de saúde se:",
                                    style: TextStyle(fontSize: fontSizeSubtitulo),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingSubTitulo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "a pressão estiver alta; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "sentir dores fortes de cabeça, com a visão embaralhada ou enxergando estrelinhas; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "tiver sangramento ou perda de líquido (água) pela vagina;  ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "tiver um corrimento escuro (marrom ou preto);",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "apresentar muito inchaço nos pés, nas pernas e no rosto, principalmente ao acordar; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "tiver dor ou ardor ao urinar; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "houver sangramento, mesmo sem dor; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "tiver contrações fortes, dolorosas e frequentes – se a bolsa das águas se romper antes de começarem as contrações, preste atenção na cor e no cheiro do líquido. Esta é uma informação importante para orientar os profissionais que vão atendê-la.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "em caso de febre, dor de cabeça, dor no corpo, vermelhidão nos olhos ou manchas vermelhas na pele.",
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
