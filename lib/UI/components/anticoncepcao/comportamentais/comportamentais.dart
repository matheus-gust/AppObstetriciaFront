import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class Comportamentais extends StatefulWidget {
  @override
  _ComportamentaisState createState() => _ComportamentaisState();
}

class _ComportamentaisState extends State<Comportamentais> {
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
              backgroundColor: Colors.yellowAccent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Anticoncepção Comportamental",style: TextStyle(fontSize: 20, color: Colors.black)),
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
                                    "Anticoncepção Comportamental ",
                                    style:
                                        TextStyle(fontSize: fontSizeTitulo),
                                    
                                  ),
                                  padding: paddingTitulo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "São os métodos baseados no reconhecimento do período fértil. Compõem um conjunto de procedimentos em que o casal se abstém do relacionamento durante o período em que pode ocorrer a fecundação, ou no uso de práticas em que o esperma não é depositado na vagina.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "São gratuitos, não trazem malefícios, ensinam a mulher a conhecer melhor seu corpo e fertilidade, permitem aos casais que assim o desejam seguir as normas de sua religião ou filosofia cultural. Não há demora no retorno da fertilidade. Não produzem efeitos colaterais, mas não trazem proteção contra infecções sexualmente transmissíveis (ISTs). Nenhum problema médico impede o uso destes métodos.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Os métodos comportamentais são: ",
                                    style: TextStyle(fontSize: fontSizeSubtitulo),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingSubTitulo),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Tabelinha;",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Muco cervical;",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),

                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Lactação e Amenorreia (LAM);",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Temperatura Basal;",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Método sintotérmico (temperatura Basal + Muco Cervical;",
                                    style: TextStyle(fontSize: fontSize),
                                  ),
                                  padding: paddingTopico),
                                  WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Coito Interrompido;",
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