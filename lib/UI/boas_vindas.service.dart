import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'package:obstetricia/shared/servidor.service.dart';
import 'package:scoped_model/scoped_model.dart';
import './boas_vindas_model/Boas_vindas.model.dart';

class BoasVindasService extends Model {
  final BASE_URL = ServidorService.BASE_URL;

  @observable
  BoasVindasModel boasVindasModel;
  
  @action
  verificarRegistroFinalizado() {
    verificarRegistros().then((value) {
        boasVindasModel = value;
        print(value.cadastroFinalizado);
      });
  }

  Future<BoasVindasModel> verificarRegistros() async {
    var response = await http.get(BASE_URL + "usuario/cadastro-finalizado",
    headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYXRAaG90bWFpbC5jb20iLCJleHAiOjE2MzE3NDA4ODB9.BZgjdsocB4-2p0F3iboYTBJNPv7T0c-KyCbvqn2-wM81nTqdMCJtVIIj_9KxmBOpu5Z09xt1AVLbO26XYA0mWQ' //preferences.getString('token')
        },
    );
    var decodedJson = jsonDecode(response.body);
    print(response.body);
    print(decodedJson['cadastroFinalizado']);
    return BoasVindasModel.fromJson(decodedJson);
  }
}
