import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/cadastro/shared/model/NovoUsuarioDTO.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class CadastroService extends Model {
  static final BASE_URL = "http://192.168.0.109:8080";
  static final LOGIN_URL = BASE_URL + "/login";
  static final CADASTRO_URL = BASE_URL + "/usuario/cadastro";
  static final _API_KEY = "somerandomkey";

  bool isLoading = false;

  
}
