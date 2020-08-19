import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class AnticoncepcaoIntro extends StatefulWidget {
  @override
  _AnticoncepcaoIntroState createState() => _AnticoncepcaoIntroState();
}

class _AnticoncepcaoIntroState extends State<AnticoncepcaoIntro> {
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
              backgroundColor: Colors.yellow,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Anticoncepção", style: TextStyle(color: Colors.black)),
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
                                    "Anticoncepção",
                                    style: TextStyle(fontSize: fontSizeTitulo),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTitulo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Anticoncepção é o uso de métodos e técnicas com a finalidade de impedir que o relacionamento sexual resulte em gravidez.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Os métodos anticoncepcionais podem ser classificados de várias maneiras. Reconhecem-se dois grupos principais: I – reversíveis II – definitivos ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Os métodos reversíveis são: comportamentais, de barreira, dispositivos intrauterinos, hormonais e os de emergência. ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Os métodos definitivos são os cirúrgicos, esterilização cirúrgica feminina e esterilização cirúrgica masculina.",
                                    style:
                                        TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingSubTitulo),
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
