import 'package:flutter/material.dart';
import 'package:obstetricia/UI/slide/slides/dados_sociodemograficos.dart';

class Slide extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: _pageController,
        children: <Widget>[
          Container(
              child: DadosSociodemograficos() 
            ),
          Container(color: Colors.grey,),
          Container(color: Colors.white,)
        ],
      ),
    );
  }
}
