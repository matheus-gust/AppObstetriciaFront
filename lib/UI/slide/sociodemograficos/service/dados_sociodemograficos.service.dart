import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:obstetricia/UI/components/pagina_inicial/pagina_inicial.dart';
import 'package:obstetricia/shared/servidor.service.dart';
import 'package:obstetricia/shared/request.service.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DadosSociodemograficosService extends Model {
  static final BASE_URL = ServidorService.BASE_URL;
  bool carregando = false;
  notifyListeners();

  Future<http.Response> cadastrarDadosSociodemograficos(
      {Map dados,
      BuildContext context,
      GlobalKey<ScaffoldState> scaffoldKey}) async {
    carregando = true;
    notifyListeners();

      SharedPreferences preferences = await SharedPreferences.getInstance();

    return http.post(
      BASE_URL + "usuario/cadastro-sociodemograficos",
      body: jsonEncode(dados),
      headers: {
        'Authorization': preferences.get('token'),
        'Content-Type': 'application/json'
      },
    ).then((http.Response response) {
      carregando = false;
      notifyListeners();
      if (response.statusCode == 200) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => PaginaInicial()));

        scaffoldKey.currentState.showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Text('Dados cadastrado com sucesso!'),
        ));
      } else {
        scaffoldKey.currentState.showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text('Falha ao cadastrar dados'),
        ));
      }
    });
  }

  void _toastyDadosSociodemograficos(BuildContext context, String mensagem) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(mensagem),
        action: SnackBarAction(
            textColor: Colors.black,
            label: 'Fechar',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
