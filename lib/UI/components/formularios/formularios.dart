import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/Formulario.model.dart';
import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/Questao.model.dart';
import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/Resposta.model.dart';

class FormularioWidget extends StatefulWidget {
  Formulario formulario;
  bool teste = false;

  FormularioWidget({Key key, this.formulario}) : super(key: key);

  @override
  _FormularioWidgetState createState() => _FormularioWidgetState();
}

class _FormularioWidgetState extends State<FormularioWidget> {
  List<Resposta> respostas = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.formulario.dscricao),
          centerTitle: true,
        ),
        body: Container(child: _construirFormulario()));
  }

  Widget _construirFormulario() {
    return ListView.builder(
        itemCount: widget.formulario.questoes.length,
        itemBuilder: (context, index) {
          Questoes questao = widget.formulario.questoes[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(),
                Text(questao.pergunta, style: TextStyle(fontSize: 20)),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(children: _construirRespostas(questao, index))),
                Divider()
              ],
            ),
          );
        });
  }

  List<Widget> _construirRespostas(Questoes questao, int index) {
    List<Widget> alternativas = [];
    this.respostas.add(new Resposta());
    for (int i = 0; i < questao.respostas.length; i++) {
      alternativas.add(Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          children: <Widget>[
            Radio(
              groupValue: respostas[index].alternativa,
              value: i,
              onChanged: (T) {
                print(T);

                setState(() {
                  respostas[index].alternativa = T;
                });
              }
            ),
            Text(
              questao.respostas[i].resposta,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ));
    }
    return alternativas;
  }
}