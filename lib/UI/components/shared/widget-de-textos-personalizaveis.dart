import 'package:flutter/material.dart';

class WidgetDeTextosPersonalizaveis extends StatelessWidget {

  Text texto;
  EdgeInsets padding;

  WidgetDeTextosPersonalizaveis({this.texto, this.padding});

  @override
  Widget build(BuildContext contex) {
    return Padding(
      padding: this.padding,
      child: Container(child: this.texto,),
    );
  }
}