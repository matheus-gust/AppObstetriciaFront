import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class Intrauterinos extends StatefulWidget {
  @override
  _IntrauterinosState createState() => _IntrauterinosState();
}

class _IntrauterinosState extends State<Intrauterinos> {
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
            title: const Text("Dispositivo Intrauterino",
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
                                  "Dispositivo Intrauterino",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                             WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "O dispositivo intrauterino (DIU) é um método anticoncepcional constituído por um aparelho pequeno e flexível que é colocado dentro do útero, o qual exerce ações que culminam por evitar a gestação. Basicamente, há dois tipos de DIU: os que contêm cobre e os com hormônio.",
                                  style: TextStyle(fontSize: fontSize),
                                ),
                                padding: paddingParagrafo),
                          ]))))
        ]))
      ])
    ]);
  }
}
