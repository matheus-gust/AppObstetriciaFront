import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obstetricia/models/Credenciais.dart';
import 'package:obstetricia/models/NovoUsuarioDTO.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class UserModel extends Model {
  static final BASE_URL = "http://192.168.15.11:8080";
  static final LOGIN_URL = BASE_URL + "/login";
  static final CADASTRO_URL = BASE_URL + "/usuario/cadastro";
  static final _API_KEY = "somerandomkey";

  bool isLoading = false;
  bool logado = false;

  Future<Credenciais> login({Map body, BuildContext context}) async {
    isLoading = true;
    notifyListeners();
    return http.post(
      LOGIN_URL,
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    ).then((http.Response response) {
      isLoading = false;
      if (response.headers["authorization"] != null) {
        logado = true;
      }

      if (response.statusCode == 401) {
        isLoading = false;
        logado = false;
        notifyListeners();
       var mensagem =  jsonDecode(response.body);

        _showToast(context, mensagem['message']);
      }

      notifyListeners();

      return null;
    });
  }

  Future<NovoUsuarioDTO> cadastro({Map body}) {
    isLoading = true;
    notifyListeners();
    return http.post(
      CADASTRO_URL,
      body: json.encode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    ).then((http.Response response) {
      final int statusCode = response.statusCode;

      isLoading = false;
      notifyListeners();

      print(response.statusCode);

      return null;
    });
  }

  void _showToast(BuildContext context, String mensagem) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(mensagem),
        action: SnackBarAction(
          textColor: Colors.black,
            label: 'Fechar', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
