import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class Definitivos extends StatefulWidget {
  @override
  _DefinitivosState createState() => _DefinitivosState();
}

class _DefinitivosState extends State<Definitivos> {
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
          backgroundColor: Colors.yellowAccent,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Métodos definitivos",
                style: TextStyle(fontSize: 20, color: Colors.black)),
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
                                  "Métodos definitivos",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                             WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Os métodos anticoncepcionais definitivos, ou cirúrgicos, são procedimentos que resultam na esterilização, seja homem ou da mulher. Na mulher é realizado por meio da laqueadura e no homem por meio da vasectomia.",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingParagrafo),
                          ]))))
        ]))
      ])
    ]);
  }
}