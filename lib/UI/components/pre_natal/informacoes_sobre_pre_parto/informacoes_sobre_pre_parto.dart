import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class InformacoesSobrePreParto extends StatefulWidget {
  @override
  _InformacoesSobrePrePartoState createState() =>
      _InformacoesSobrePrePartoState();
}

class _InformacoesSobrePrePartoState extends State<InformacoesSobrePreParto> {
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
          backgroundColor: Colors.pink,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Informações sobre o Pré-Natal"),
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
                                texto: Text("Informações sobre o Pré-Natal",
                                    style: TextStyle(fontSize: fontSizeTitulo)),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Alimentação",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Durante a gestação procure ter uma alimentação saudável e diversificada, predominantemente de origem vegetal, rica em alimentos naturais e com o menor processamento industrial possível. Isso é importante para sua saúde e bem-estar, e para a formação e o crescimento adequado do bebê.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Dicas para um Pré-Natal Saudável",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "É recomendável tomar 20 minutos de sol, durante o início da manhã ou o final da tarde, inclusive nas mamas. Lembre-se de usar boné ou chapéu e protetor solar no rosto, para evitar manchas de pele. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Evite descolorantes, tinturas de cabelo, alisantes e onduladores que contêm amônia e outros componentes que podem fazer mal ao bebê. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Você deve sair de ambientes onde haja fumantes, em qualquer fase da gravidez. Respirar a fumaça com frequência pode afetar o bebê",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Dicas de Exercícios",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Caminhadas ajudam a melhorar a circulação do sangue, aumentar a disposição e a sensação de bem-estar. Se não houver contraindicação, devem ser mantidas do início ao fim da gravidez. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Procure fazer atividades físicas leves e prazerosas. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Exercite a respiração: respire lenta e profundamente, várias vezes ao dia. Isso pode ajudar em momentos de desconforto e inquietude.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Dicas de Sono",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Procure dormir 8 horas por noite. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Repouse alguns minutos durante o dia. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),

                                 WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Eleve as pernas quando estiver sentada ou deitada. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                                 WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Caso tenha muito sono, procure repousar mais. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                                 WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Deite-se preferencialmente do lado esquerdo, com um travesseiro entre as pernas. Esta posição facilita a passagem de oxigênio para o bebê.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Sexo na Gestação",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),
                                 WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Ter relações sexuais até o final da gravidez é saudável, pode dar muito prazer, não machuca o bebê e pode, inclusive, ajudar no seu nascimento. Durante o orgasmo é comum a barriga ficar dura, não se preocupe. Evite posições que causem desconforto e lembre-se de que o que realmente importa é que seja respeitada sua vontade de ter ou não relação. Converse com seu(sua) companheiro(a) sobre isso! ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Atenção: Se notar presença de sangramento ou saída de líquido diferente, evite atividade sexual e procure a Unidade Básica de Saúde.",
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
