import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class VacinasCrianca extends StatefulWidget {
  @override
  _VacinasCriancaState createState() => _VacinasCriancaState();
}

class _VacinasCriancaState extends State<VacinasCrianca> {
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
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Vacinas Gestante",
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
                                  "Ao nascer",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "BCG (Bacilo Calmette-Guerin) – (previne as formas graves de tuberculose, principalmente miliar e meníngea) - dose única - dose única ;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Hepatite B (previne a hepatite B) - dose ao nascer;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "2 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Penta (previne difteria, tétano, coqueluche, hepatite B e infecções causadas pelo Haemophilus influenzae B) – 1ª dose;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Vacina Poliomielite 1, 2 e 3 (inativada) - (VIP) (previne a poliomielite) – 1ª dose;",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Pneumocócica 10 Valente (conjugada) (previne a pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo) – 1ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Rotavírus humano (previne diarreia por rotavírus) – 1ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "3 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Meningocócica C (conjugada) - (previne Doença invasiva causada pela Neisseria meningitidis do sorogrupo C) – 1ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "4 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Penta (previne difteria, tétano, coqueluche, hepatite B e infecções causadas pelo Haemophilus influenzae B) – 2ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Vacina Poliomielite 1, 2 e 3 (inativada) - (VIP) (previne a poliomielite) – 2ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Pneumocócica 10 Valente (conjugada) (previne pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo) – 2ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Rotavírus humano (previne diarreia por rotavírus) – 2ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "5 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Meningocócica C (conjugada) (previne doença invasiva causada pela Neisseria meningitidis do sorogrupo C) – 2ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "6 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Penta (previne difteria, tétano, coqueluche, hepatite B e infecções causadas pelo Haemophilus influenzae B) – 3ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Vacina Poliomielite 1, 2 e 3 (inativada) - (VIP) - (previne poliomielite) – 3ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "9 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Febre Amarela – uma dose (previne a febre amarela)",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "12 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Tríplice viral (previne sarampo, caxumba e rubéola) – 1ª dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Pneumocócica 10 Valente (conjugada) - (previne pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo) – Reforço",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Meningocócica C (conjugada) (previne doença invasiva causada pela Neisseria meningitidis do sorogrupo C) – Reforço",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "15 Meses",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "DTP (previne a difteria, tétano e coqueluche) – 1º reforço",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Vacina Poliomielite 1 e 3 (atenuada) (VOP) - (previne poliomielite) – 1º reforço",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Hepatite A – uma dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Tetra viral – (previne sarampo, rubéola, caxumba e varicela/catapora) - Uma dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "4 Anos",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "DTP (Previne a difteria, tétano e coqueluche) – 2º reforço",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Vacina Poliomielite 1 e 3 (atenuada) (VOP) – (previne poliomielite) - 2º reforço",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Varicela atenuada (previne varicela/catapora) – uma dose",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Crianças de 6 meses a 5 anos (5 anos 11 meses e 29 dias) de idade deverão tomar uma ou duas doses da vacina influenza durante a Campanha Anual de Vacinação da Gripe.",
                                  style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
                                ),
                                padding: paddingParagrafo),
                          ]))))
        ]))
      ])
    ]);
  }
}
