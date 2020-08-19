import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class ComplicacoesMamarias extends StatefulWidget {
  @override
  _ComplicacoesMamariasState createState() => _ComplicacoesMamariasState();
}

class _ComplicacoesMamariasState extends State<ComplicacoesMamarias> {
  @override
  Widget build(BuildContext context) {
    return  Stack(children: <Widget>[
      Container(
        color: Colors.white,
      ),
      CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          floating: true,
          snap: true,
          backgroundColor: Colors.green,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Amamentação",
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
                                  "Principais complicações mamárias que podem ocorrer durante o período de lactação, bem como seus respectivos tratamentos e medidas preventivas: ",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "O Ingurgitamento ocorre quando há congestão/aumento da vascularização, acúmulo de leite e inchaço decorrente da congestão e obstrução. A mama encontra-se aumentada de tamanho, dolorosa, com áreas difusas avermelhadas, inchadas e brilhantes. Os mamilos ficam achatados dificultando a pega, e o leite não flui com facilidade. A prevenção se dá pelo início precoce da amamentação e livre demanda. O tratamento consiste em manter o aleitamento sob livre demanda, realizando extração láctea (ordenha) manual prévia da aréola, e massagear a mama de modo delicado para favorecer a fluidificação do leite e o estimulo de ejeção.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Os Traumas Mamilares constituem-se na principal causa de desmame precoce, e não contraindicam a amamentação. Decorrem da má pega e apreensão do mamilo e da aréola, levando à erosão por atrito e a feridas superficiais ou profundas. O tratamento é sintomático, e baseia-se principalmente na posição do recém-nascido, com pega adequada do mamilo e aréola, limpeza das lesões, ou desinfecção uma vez ao dia, sendo o próprio leite materno um excelente cicatrizante (deve-se aplicá-lo nas lesões, que devem ser mantidas sempre secas, após as mamadas).",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "A Mastite trata-se de um quadro inflamatório agudo infeccioso que tem origem na estase láctea nos ductos, possibilitando a proliferação de bactérias, e relaciona-se com dificuldade de amamentação e traumas mamilares. O tratamento é feito com hidratação oral e administração de analgésicos, anti-inflamatórios e antibióticos. O aleitamento não está contraindicado, exceto nos casos de saída de pus diretamente pelo mamilo. ",
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