import 'package:flutter/material.dart';

class ControleGestacao extends StatefulWidget {
  @override
  _ControleGestacaoState createState() => _ControleGestacaoState();
}

class _ControleGestacaoState extends State<ControleGestacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrar"),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: IconButton(
                icon: Icon(Icons.person_add),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Container(
          color: Colors.red,
        ));
  }
}
