import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class ExamesTriagemNeonatal extends StatefulWidget {
  @override
  _ExamesTriagemNeonatalState createState() => _ExamesTriagemNeonatalState();
}

class _ExamesTriagemNeonatalState extends State<ExamesTriagemNeonatal> {
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
            title: const Text("Exames de Triagem Neonatal",
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
                                  "Exames de Triagem Neonatal",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Todo bebê que nasce no Brasil tem direito a realizar gratuitamente quatro exames muito importantes para a sua saúde, capazes de identificar algumas doenças de forma precoce e promovendo assim um manejo adequado.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Teste do Pezinho:",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "É o principal teste para diagnosticar seis doenças que, quanto mais cedo forem identificadas, melhores são as chances de tratamento. São elas fenilcetonúria, hipotireoidismo congênito, doença falciforme e outras hemoglobinopatias, fibrose cística, deficiência de biotinidase e hiperplasia adrenal congênita.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),


                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Teste do Olhinho:",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Pode detectar algumas alterações visuais no bebê, como catarata, glaucoma congênito e outros problemas – cuja identificação precoce pode possibilitar o tratamento no tempo certo e o desenvolvimento normal da visão. ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),


                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Teste da Orelhinha:",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "O exame é feito, geralmente, no segundo ou terceiro dia de vida do bebê e identifica problemas auditivos no recém-nascido. As crianças nascidas fora do ambiente hospitalar devem fazê-lo antes de completarem 3 meses de vida.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),


                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Teste do Coraçãozinho:",
                                  style: TextStyle(fontSize: fontSizeSubtitulo, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo),

                                WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "É realizado entre 24h a 48h após o nascimento. Caso algum problema seja detectado, o bebê é encaminhado para fazer um ecocardiograma. Se alterado, é novamente encaminhado para um centro de referência em cardiopatia para tratamento. Problemas no coração são a terceira maior causa de morte em recém-nascidos. Por isso, quanto mais cedo for diagnosticado, melhores são as chances do tratamento.",
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