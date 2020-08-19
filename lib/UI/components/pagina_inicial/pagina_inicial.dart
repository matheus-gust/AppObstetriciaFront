import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/pagina_inicial/sidebar/sidebar.dart';
import 'package:obstetricia/UI/components/pagina_inicial/tela_inicial/tela_inicial.dart';

class PaginaInicial extends StatelessWidget {

  final _pageControler = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageControler,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: TelaInicial(),
          drawer: Sidebar(),
    )
      ],
    );
  }
}
