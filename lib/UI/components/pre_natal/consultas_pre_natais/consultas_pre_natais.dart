import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class ConsultasPreNatais extends StatefulWidget {
  @override
  _ConsultasPreNataisState createState() => _ConsultasPreNataisState();
}

class _ConsultasPreNataisState extends State<ConsultasPreNatais> {
  double _fontSize = 15;
  double _fontSizeTitulo = 20;

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
              backgroundColor: Colors.pink,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Consultas Pré Natais"),
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
                                    "Consultas Pré-Natais",
                                    style:
                                        TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingSubTitulo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Toda gestante tem direito a consultas e exames pelo SUS. A cada consulta o profissional irá: ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "1.	perguntar como está se sentindo, como passou o mês e ouvir suas dúvidas e impressões sobre esse momento;",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "2.	fazer o exame clínico e verificar seu peso e pressão arterial, observar se há sinais de anemia ou inchaço, medir o tamanho de sua barriga, ouvir as batidas do coração do bebê;",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "3.	solicitar exames e avaliar seus resultados; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "4.	verificar as vacinas do pré-natal; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "5.	prescrever ácido fólico, sulfato ferroso e tratamentos, se necessário; ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "6.	orientar quanto às questões da gravidez e do parto. ",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingTopico),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "As consultas devem ser realizadas conforme este cronograma: até a 28ª semana de gestação – mensalmente; da 28ª até a 36ª semana de gestação – quinzenalmente; da 36ª até a 41ª semana de gestação – semanalmente.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),
                              WidgetDeTextosPersonalizaveis(
                                  texto: Text(
                                    "Algumas mulheres podem apresentar complicações – são situações que precisam de acompanhamento especializado, identificadas durante o pré-natal. Neste caso, você será encaminhada ao serviço de pré-natal de alto risco, mas continuará tendo o acompanhamento dos profissionais que iniciaram seu pré-natal.",
                                    style: TextStyle(fontSize: fontSize),
                                    textAlign: TextAlign.justify,
                                  ),
                                  padding: paddingParagrafo),
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

/*
Scaffold(
appBar: AppBar(
centerTitle: true,
title: Text(
"Consultas Pré-Natais"
),
backgroundColor: Colors.pink,
),
body: Stack(
children: <Widget>[
Container(
color: Colors.pinkAccent
),
Padding(
padding: EdgeInsets.all(25),
child: Column(
children: <Widget>[
Text(
"As consultas de pré-natal são realizadas tanto por médicos(as) quanto por enfermeiros(as). Já os grupos de gestantes podem ser realizados por qualquer profissional de saúde. É importante que todos os profissionais façam parte do cuidado durante o pré-natal, como agente comunitário de saúde, técnico de enfermagem, dentista e, se necessário, assistente social, psicólogo, fisioterapeuta, entre outros (Ministério da Saúde, 2019). ",
style: TextStyle(
fontSize: 25, color: Colors.white),
),

Text(
"Toda gestante tem direito a consultas e exames pelo SUS. A cada consulta o profissional irá:  ",
style: TextStyle(
fontSize: 25, color: Colors.white),
),

Text(
"1. perguntar como está se sentindo, como passou o mês e ouvir suas dúvidas e impressões sobre esse momento – é interessante você anotá-las no final desta caderneta para não se esquecer na próxima consulta;  ",
style: TextStyle(
fontSize: 25, color: Colors.white),
),
],
),
)
],
)
);*/
