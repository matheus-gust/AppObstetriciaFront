import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/cadastro/shared/model/NovoUsuarioDTO.dart';
import 'package:obstetricia/UI/components/login/shared/model/Credenciais.dart';
import 'package:obstetricia/shared/servidor.service.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class LoginService extends Model {
  static final BASE_URL = ServidorService.BASE_URL;
  static final LOGIN_URL = BASE_URL + "login";
  static final CADASTRO_URL = BASE_URL + "usuario/cadastro";
  static final _API_KEY = "somerandomkey";

  bool isLoading = false;
  bool logado = false;

  Future<Credenciais> login({Map body, BuildContext context}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    isLoading = true;
    notifyListeners();
    try {
      return http.post(
      LOGIN_URL,
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    ).then((http.Response response) {
      isLoading = false;
      if (response.headers["authorization"] != null) {
        preferences.setString('token', response.headers["authorization"]);
        logado = true;
      }

      if (response.statusCode == 401) {
        isLoading = false;
        logado = false;
        notifyListeners();
       var mensagem =  jsonDecode(response.body);

        _toastyLogin(context, mensagem['message']);
      }

      notifyListeners();

      return null;
    }).catchError((e) {
      print(e);
      isLoading = false;
      notifyListeners();
      _erro(context, "Falha ao conectar ao servidor");
    });
    } catch(e) {
      _toastyLogin(context, 'Falha ao conectar com o servidor');
    }
    
  }

  void _toastyCadastro(BuildContext context, String mensagem, Color color) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(mensagem),
        action: SnackBarAction(
            textColor: Colors.black,
            label: 'Fechar', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _toastyLogin(BuildContext context, String mensagem) {
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

  void _erro(BuildContext context, String mensagem) {
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

  Future<NovoUsuarioDTO> cadastro({Map body, BuildContext context}) {
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

      if(response.statusCode == 403) {
        _toastyCadastro(context, jsonDecode(response.body)["error"], Colors.red);
      }

      if(response.statusCode == 201) {
        _toastyCadastro(context, "Usuario criado", Colors.green);
      }

      if(response.statusCode != 201 && response.statusCode != 403) {
        _toastyCadastro(context, "Falha ao cadastrar usuario", Colors.red);
      }

      return null;
    }).catchError((e) {
      isLoading = false;
      notifyListeners();
      _erro(context, "Falha ao conectar ao servidor");
    });
  }
}
