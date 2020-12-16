import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/FormApi.model.dart';
import 'package:obstetricia/shared/servidor.service.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'sidebar.service.g.dart';

class SidebarService = _SidebarServiceBase with _$SidebarService;

abstract class _SidebarServiceBase with Store {
  static final BASE_URL = ServidorService.BASE_URL;
  static final FORMS = BASE_URL + "formulario";
  static final _API_KEY = "somerandomkey";

  @observable
  FormApi formApi;

  @action
  chamadaFormularios() {
    listarFormulairos().then((value) {
        formApi = value;
        print(formApi.formularios[0].id);
      });
  }

  Future<FormApi> listarFormulairos({BuildContext context}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try {
      final response = await http.get(
        FORMS,
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYXRAaG90bWFpbC5jb20iLCJleHAiOjE2MzE3NDA4ODB9.BZgjdsocB4-2p0F3iboYTBJNPv7T0c-KyCbvqn2-wM81nTqdMCJtVIIj_9KxmBOpu5Z09xt1AVLbO26XYA0mWQ' //preferences.getString('token')
        },
      );
      var decodedJson = jsonDecode(response.body);
      return FormApi.fromJson(decodedJson);
    } catch (e) {
      return null;
    }
  }
}
